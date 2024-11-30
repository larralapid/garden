with detail as(
with ts_cte as
(select

(date_trunc('month',$P{StartTimeFixed}::DATE) - interval '5 months')::timestamp without time zone as "FROM_DATE",
(date_trunc('month',$P{StartTimeFixed}::DATE) + interval '1 months')::timestamp without time zone as "TO_DATE",
((date_trunc('month',$P{StartTimeFixed}::DATE) + interval '1 months')- interval '1 day')::timestamp without time zone as "TO_DATE_DIS"
),

persid_list as
(select 
a."PERSID",
a."REF_NUM",
a."OPEN_DATE_NORMAL",
a."OPEN_DATE",
a."CLOSE_DATE_NORMAL",
a."AFFECTED_SERVICE",
a."ACTIVE_FLAG",
a."STATUS",
a."CATEGORY",
(select distinct "LAST_NAME" from cfc_dw.ca_contact g where a."GROUP_ID"=g."CONTACT_UUID") as "GROUP"
from cfc_dw.call_req a
where
      "OPEN_DATE_NORMAL" < (select "TO_DATE" from ts_cte)
AND ("CLOSE_DATE_NORMAL" >= (select "FROM_DATE" from ts_cte) or "CLOSE_DATE" is null)
AND "TYPE"='I'
AND "CATEGORY" NOT IN ('pcat:400378','pcat:400514')),

pd as
(select
"PERSID"
from
persid_list

where (cfc_dw.is_associated_with_department($P{Dept},"GROUP",$P{Team}))),

non_pd as
(select 
pl."PERSID"
from 
persid_list pl,
cfc_dw.act_log act
where
--transferred a ticket that was active in month1
pl."PERSID" = act."CALL_REQ_ID"
AND act."TIME_STAMP_NORMAL" >= (select "FROM_DATE" from ts_cte)
AND act."TIME_STAMP_NORMAL" < (select "TO_DATE" from ts_cte)
AND act."TYPE"='TR'
AND cfc_dw.is_transferred_from_department($P{Dept},act."ACTION_DESC",$P{Team})
AND pl."PERSID" not in (select "PERSID" from pd)),


interestedpersids as
(select "PERSID"
from pd
UNION
select "PERSID"
from non_pd),

 InterestedCallReq AS (
 SELECT 
 a."REF_NUM",
 a."PERSID",
 a."OPEN_DATE_NORMAL",
 a."OPEN_DATE",
 a."CLOSE_DATE_NORMAL",
case when e."PRODUCT_VERSION" = 'null' or e."PRODUCT_VERSION" = '' or e."PRODUCT_VERSION" is null then 'None Entered' else (select distinct bu.owning_bus_unit from cfc_dw.bus_unit bu where e."PRODUCT_VERSION" = bu.product_version) End as "BU",
a."GROUP",
a."ACTIVE_FLAG",
a."STATUS"
FROM
persid_list a
LEFT JOIN
cfc_dw.ca_owned_resource e
ON a."AFFECTED_SERVICE" = e."OWN_RESOURCE_UUID",

interestedpersids ip

WHERE 
    ip."PERSID" = a."PERSID"
AND NOT EXISTS (SELECT 1  FROM cfc_dw.prob_ctg cat WHERE a."CATEGORY" = cat."PERSID" AND cat."SYM" LIKE '%xception%'AND cat."ID" != 400391)
),


InterestedActLog AS
 (  SELECT 
 "CALL_REQ_ID",
"TYPE",
"TIME_STAMP_NORMAL",
"TIME_STAMP",
"ACTION_DESC",
"DESCRIPTION"

FROM cfc_dw.act_log
WHERE 
"TYPE" in ('INITGRP','INIT','CL','RE','REO','TR','ST','CNCL')
AND "CALL_REQ_ID" IN ( SELECT "PERSID" FROM InterestedCallReq )),

JoinedActLog AS
 ( SELECT 
 	a."TYPE" AS "ATYPE",
b."TYPE" AS "BTYPE",
a."CALL_REQ_ID" AS "ACALL_REQ_ID",
b."CALL_REQ_ID" AS "BCALL_REQ_ID",
a."TIME_STAMP" AS "ATIME_STAMP",
b."TIME_STAMP" AS "BTIME_STAMP",
a."ACTION_DESC" AS "AACTION_DESC",
b."ACTION_DESC" AS "BACTION_DESC"

FROM 
InterestedActLog a,
InterestedActLog b
WHERE
 a."CALL_REQ_ID" = b."CALL_REQ_ID"
 AND a."TIME_STAMP" < b."TIME_STAMP" ),

OpenedToPD AS
 (SELECT
a."REF_NUM",
a."PERSID",
a."OPEN_DATE",
a."OPEN_DATE_NORMAL",
a."CLOSE_DATE_NORMAL",
a."GROUP",
a."BU"

FROM InterestedCallReq a
WHERE EXISTS ( SELECT 1
               FROM InterestedActLog b
               WHERE a."PERSID" = b."CALL_REQ_ID"
               AND b."TYPE" = 'INITGRP'
               AND cfc_dw.is_assigned_to_department($P{Dept},b."DESCRIPTION",$P{Team}))),


TransferedToPD as
(SELECT
a."REF_NUM",
a."PERSID",
a."OPEN_DATE",	
a."OPEN_DATE_NORMAL",
a."CLOSE_DATE_NORMAL",
coalesce(g1."MIN_TR_IN_NORMAL",a."OPEN_DATE_NORMAL") as "MIN_TR_IN_NORMAL",
coalesce(g1."MIN_TR_IN",a."OPEN_DATE") as "MIN_TR_IN",
a."GROUP",
a."BU"
				
FROM InterestedCallReq a
LEFT JOIN
--get inital transfer in
(select  
min("TIME_STAMP_NORMAL") as "MIN_TR_IN_NORMAL",
min("TIME_STAMP") as "MIN_TR_IN",
"CALL_REQ_ID"
	
from InterestedActLog
WHERE 
cfc_dw.is_transferred_to_department($P{Dept}, "ACTION_DESC",$P{Team})
AND NOT cfc_dw.is_transferred_from_department($P{Dept}, "ACTION_DESC",$P{Team})
group by "CALL_REQ_ID")g1
ON  a."PERSID"=g1."CALL_REQ_ID"

WHERE
 NOT EXISTS (SELECT 1
                FROM InterestedActLog o
                 WHERE a."PERSID" = o."CALL_REQ_ID"
                 AND o."TYPE" = 'INITGRP'
                 AND cfc_dw.is_assigned_to_department($P{Dept},o."DESCRIPTION",$P{Team}))),
                        
AreaList as
(select distinct 
a."BU",
b."DATE"
from
(select distinct owning_bus_unit as "BU"
from 
cfc_dw.bus_unit
UNION
select
'None Entered' as "BU") a,
(select distinct date_trunc('month',monthstart)::timestamp without time zone as "DATE"
from public.date_dim
where 
    date_trunc('day',date)::timestamp without time zone>=(select "FROM_DATE" from ts_cte)
and date_trunc('day',date)::timestamp without time zone<(select "TO_DATE" from ts_cte))b)

SELECT DISTINCT 
a."BU",
a."DATE",
coalesce(b."OPENED", 0) AS "OPENED",
coalesce(w2."WIP", 0) AS "WIP",
coalesce(w2."WIP HRS", 0) AS "PD_HRS_TO_WIP",
coalesce(f."ESCALATED", 0) AS "ESCALATED",
coalesce(f."ESC_HRS", 0) AS "ESC_HRS",
coalesce(d."RES", 0) AS "RESOLVED",
coalesce(e."CANCELLED", 0) AS "CANCELLED",
coalesce(t."TRANSFERRED", 0) AS "TRANSFERRED",
coalesce(d."PD_RES_HRS", 0) AS "PD_HRS_TO_RES",
coalesce(d."TOTAL_RES_HRS", 0) AS "TOTAL_HRS_TO_RES",
coalesce(d."LESS_THAN_8", 0) AS "LESS_THAN_8",
coalesce(bk."BACKLOG", 0) AS "BACKLOG",
coalesce(bk."TOTAL BACKLOG HRS", 0) AS "TOTAL BACKLOG HRS",
( SELECT "FROM_DATE" FROM ts_cte ) AS "FROM_DATE",
( SELECT "TO_DATE_DIS"FROM ts_cte ) AS "TO_DATE"

FROM AreaList a
--------------------------------------------------------------------------------------OPENED TKTS      
    LEFT JOIN 
    (  SELECT DISTINCT 
    	a."BU",
        date_trunc('month', a."OPEN_DATE_NORMAL") AS "DATE",
        count(DISTINCT a."REF_NUM") AS "OPENED"
       
        FROM
         ( SELECT
         	 "BU",
           "REF_NUM",
          "OPEN_DATE_NORMAL"
            FROM 
            OpenedToPD
            WHERE 
            "OPEN_DATE_NORMAL" >= ( SELECT "FROM_DATE" FROM ts_cte )
            AND "OPEN_DATE_NORMAL" < ( SELECT "TO_DATE" FROM ts_cte )
             
            UNION ALL
             
            SELECT 
            "BU",
            "REF_NUM",
           "MIN_TR_IN_NORMAL" AS "OPEN_DATE_NORMAL"
            FROM 
            TransferedToPD
            WHERE "MIN_TR_IN_NORMAL" >= (SELECT "FROM_DATE" FROM ts_cte)
            AND "MIN_TR_IN_NORMAL" < (SELECT "TO_DATE" FROM ts_cte )) a
        GROUP BY 
        a."BU",
        date_trunc('month', a."OPEN_DATE_NORMAL")) b
        ON a."BU" = b."BU"
        AND a."DATE" = b."DATE"

     ------------------------------------------------------------------------------------ESCALATED TKTS
    LEFT JOIN
     (SELECT
     	 esc."BU",
         esc."DATE",
         count(DISTINCT esc."REF_NUM") AS "ESCALATED",
         sum("HRS") AS "ESC_HRS"
        FROM
         (SELECT DISTINCT 
         	a."BU",
            date_trunc('month', a."ESC_NORMAL") AS "DATE",
            a."REF_NUM",
              round((a."ESC" - a."OPEN_DATE")::NUMERIC(10, 0) / 60, 2) AS "HRS"
            FROM
             ( SELECT 
             "BU",
             "REF_NUM",
             "OPEN_DATE",
             min("ESC") AS "ESC",
             min("ESC_NORMAL") AS "ESC_NORMAL"
             FROM
              OpenedToPD ,
              ( SELECT 
              "TIME_STAMP_NORMAL" AS "ESC_NORMAL",
               "TIME_STAMP" AS "ESC",
               "CALL_REQ_ID"
                FROM 
                InterestedActLog
                WHERE
                 "ACTION_DESC" like '%to ''Escalate''%'
                 OR "ACTION_DESC" like '%to ''Awaiting End User%''%') w
                WHERE 
                "PERSID" = w."CALL_REQ_ID"
                 AND w."ESC" >= "OPEN_DATE"
                 GROUP BY 
                 "BU",
                 "REF_NUM",
                 "OPEN_DATE"
                 
                UNION ALL
                 
                SELECT 
                "BU",
                "REF_NUM",
                "MIN_TR_IN" AS "OPEN_DATE",
                min("ESC") AS "ESC",
                min("ESC_NORMAL") AS "ESC_NORMAL"
                FROM TransferedToPD,
                (  SELECT
                 "TIME_STAMP_NORMAL" AS "ESC_NORMAL",
                 "TIME_STAMP" AS "ESC",
                 "CALL_REQ_ID"
                  FROM 
                  InterestedActLog
                  WHERE 
                  "ACTION_DESC" like '%to ''Escalate''%'
                  OR "ACTION_DESC" like '%to ''Awaiting End User%''%' ) w
                WHERE 
                "PERSID" = w."CALL_REQ_ID"
                AND w."ESC" >= "MIN_TR_IN"
                GROUP BY 
                "BU",
                "REF_NUM",
                "MIN_TR_IN" ) a
            WHERE
             a."ESC_NORMAL" >= (  SELECT "FROM_DATE" FROM ts_cte )
             AND a."ESC_NORMAL" < ( SELECT "TO_DATE" FROM ts_cte )) esc
             Group by
             esc."BU",
             esc."DATE")f 
        ON a."BU"= f."BU"
        AND a."DATE" = f."DATE"
------------------------------------------------------------------------------------RESOLVED TKTS
    LEFT JOIN 
    ( SELECT 
    	a."BU",
       date_trunc('month', b."MAX_COMPLETE_NORMAL") AS "DATE",
       count(DISTINCT a."REF_NUM") AS "RES",
       round(sum(b."MAX_COMPLETE" - a."OPEN_DATE") / 60, 2) AS "TOTAL_RES_HRS",
       round(sum(( b."MAX_COMPLETE" - (CASE WHEN a."PERSID" IN ( SELECT "PERSID" FROM OpenedToPD) THEN a."OPEN_DATE" ELSE 
      ( SELECT "MIN_TR_IN" FROM TransferedToPD  WHERE a."PERSID" = TransferedToPD."PERSID" ) END)) - coalesce(h2."NON_PD_TIME", 0)) / 60, 2) AS "PD_RES_HRS",
       count(DISTINCT case when 
        (( b."MAX_COMPLETE" - (CASE WHEN a."PERSID" IN ( SELECT "PERSID" FROM OpenedToPD) THEN a."OPEN_DATE" ELSE 
        ( SELECT "MIN_TR_IN" FROM TransferedToPD  WHERE a."PERSID" = TransferedToPD."PERSID" ) END)) - coalesce(h2."NON_PD_TIME", 0))/60 <= 8 then a."PERSID" End) as "LESS_THAN_8"
       	
        FROM InterestedCallReq a
        --Get max Reopen Timestamp
        LEFT JOIN
         ( SELECT DISTINCT 
         	max("TIME_STAMP") AS "MAX_REOPEN",
           "CALL_REQ_ID"
            FROM InterestedActLog
            WHERE
             "TYPE" = 'RO'
            GROUP BY "CALL_REQ_ID") f 
            ON a."PERSID" = f."CALL_REQ_ID"
        --Get max Cancel Timestamp
        LEFT JOIN 
        ( SELECT DISTINCT 
        	max("TIME_STAMP") AS "MAX_CANCEL",
            "CALL_REQ_ID"
            FROM InterestedActLog
            WHERE 
            (( "TYPE" = 'CL' AND "ACTION_DESC" LIKE '%to ''Cancelled''%' )
               OR "TYPE" = 'CNCL')
            GROUP BY "CALL_REQ_ID" ) i 
            ON a."PERSID" = i."CALL_REQ_ID"
        --this table gives the timestamps and totals for time spent outside of PD Division
        LEFT JOIN
         ( SELECT DISTINCT 
         	d."CALL_REQ_ID",
            sum(DISTINCT d."END_TIME_STAMP" - d."START_TIME_STAMP") AS "NON_PD_TIME"
            FROM 
            ( SELECT DISTINCT 
            	c."CALL_REQ_ID",
                c."TIME_STAMP" AS "START_TIME_STAMP",
                 min(c."END_TIME") AS "END_TIME_STAMP"
                FROM 
                (SELECT
                "ACALL_REQ_ID" AS "CALL_REQ_ID",
                "ATIME_STAMP" AS "TIME_STAMP",
                "BTIME_STAMP" AS "END_TIME"
                  FROM 
                  JoinedActLog                 
                   WHERE
                   cfc_dw.is_transferred_to_department($P{Dept},"BACTION_DESC",$P{Team})
                   AND NOT(cfc_dw.is_transferred_from_department($P{Dept},"BACTION_DESC",$P{Team}))
                   AND cfc_dw.is_transferred_from_department($P{Dept},"AACTION_DESC",$P{Team})
                   AND NOT(cfc_dw.is_transferred_to_department($P{Dept},"AACTION_DESC",$P{Team}))) c
              GROUP BY 
              c."CALL_REQ_ID",
              c."TIME_STAMP" ) d
            GROUP BY d."CALL_REQ_ID") h2 
            ON a."PERSID" = h2."CALL_REQ_ID",
            			
            
            --Get Max "Resolve/Close" Timestamp
            ( SELECT DISTINCT 
            	max("TIME_STAMP_NORMAL") AS "MAX_COMPLETE_NORMAL",
                max("TIME_STAMP") AS "MAX_COMPLETE",
                "CALL_REQ_ID"
                FROM
                 InterestedActLog
                WHERE
                 ("TYPE" = 'RE'
                      OR ( "TYPE" = 'CL'  AND "ACTION_DESC" LIKE '%to ''Closed''%' ))
                GROUP BY "CALL_REQ_ID") b
                
        WHERE 
        a."PERSID" = b."CALL_REQ_ID"
            --DATE RANGE FITER
         AND b."MAX_COMPLETE_NORMAL" >= ( SELECT "FROM_DATE" FROM ts_cte )
         AND b."MAX_COMPLETE_NORMAL" < ( SELECT "TO_DATE" FROM ts_cte )
         AND ( i."MAX_CANCEL" IS NULL  OR i."MAX_CANCEL" < b."MAX_COMPLETE" )
         AND (  f."MAX_REOPEN" IS NULL OR f."MAX_REOPEN" < b."MAX_COMPLETE" )
         AND a."STATUS" IN ( 'RE','CL')
         AND cfc_dw.is_associated_with_department($P{Dept},a."GROUP",$P{Team})
        GROUP BY 
        a."BU",
        date_trunc('month', b."MAX_COMPLETE_NORMAL")) d 
        ON a."BU" = d."BU"
        AND a."DATE" = d."DATE"
------------------------------------------------------------------------------------TRANSFERRED OUT TKTS
    LEFT JOIN
     (SELECT
     	 a."BU",
         date_trunc('month', h."MAX_TR_OUT") AS "DATE",
        count(DISTINCT a."REF_NUM") AS "TRANSFERRED"
        
        FROM 
        InterestedCallReq a ,
        --Get Max Transfer "Out" Timestamp
        (SELECT DISTINCT 
        	max("TIME_STAMP_NORMAL") AS "MAX_TR_OUT",
            "CALL_REQ_ID"
            FROM
             InterestedActLog
             WHERE
            cfc_dw.is_transferred_from_department($P{Dept},"ACTION_DESC",$P{Team})
           AND NOT(cfc_dw.is_transferred_to_department($P{Dept},"ACTION_DESC",$P{Team}))
           GROUP BY "CALL_REQ_ID") h
        WHERE 
        a."PERSID" = h."CALL_REQ_ID"
        --DATE FILTER
        AND h."MAX_TR_OUT" >= ( SELECT "FROM_DATE" FROM ts_cte )
        AND h."MAX_TR_OUT" < ( SELECT "TO_DATE" FROM ts_cte )
        AND NOT(cfc_dw.is_associated_with_department($P{Dept},a."GROUP",$P{Team}))
        GROUP BY
         a."BU",
         date_trunc('month', h."MAX_TR_OUT")) t 
         ON a."BU" = t."BU"
        AND a."DATE" = t."DATE"
 ------------------------------------------------------------------------------------CANCELLED TKTS
    LEFT JOIN
     (SELECT 
     	a."BU",
        date_trunc('month', i."MAX_CANCEL") AS "DATE",
        count(DISTINCT a."REF_NUM") AS "CANCELLED"
        FROM 
        InterestedCallReq a
        --Get max Reopen Timestamp
        LEFT JOIN
         ( SELECT DISTINCT 
         	max("TIME_STAMP_NORMAL") AS "MAX_REOPEN",
            "CALL_REQ_ID"
            FROM 
            InterestedActLog
            WHERE
             "TYPE" = 'RO'
            GROUP BY "CALL_REQ_ID") f 
            ON a."PERSID" = f."CALL_REQ_ID" ,
            --Get max Cancel Timestamp
            ( SELECT DISTINCT 
           max("TIME_STAMP_NORMAL") AS "MAX_CANCEL",
           "CALL_REQ_ID"
            FROM
             InterestedActLog
             WHERE
             (( "TYPE" = 'CL'  AND "ACTION_DESC" LIKE '%to ''Cancelled''%')
                   OR "TYPE" = 'CNCL' )
             GROUP BY "CALL_REQ_ID" ) i
             WHERE 
             a."PERSID" = i."CALL_REQ_ID"
            --DATE FILTER
            AND i."MAX_CANCEL" >= ( SELECT "FROM_DATE"  FROM ts_cte )
            AND i."MAX_CANCEL" < ( SELECT "TO_DATE" FROM ts_cte)
            AND (  f."MAX_REOPEN" IS NULL  OR f."MAX_REOPEN" < i."MAX_CANCEL" )
            AND a."STATUS" = 'CNCL'
            AND cfc_dw.is_associated_with_department($P{Dept},a."GROUP",$P{Team})
           GROUP BY a."BU",
           date_trunc('month', i."MAX_CANCEL"))e
           ON a."BU" = e."BU"
          AND a."DATE" = e."DATE"
    --------------------------------------------------------------------------------------WIP TKTS     
    LEFT JOIN
     ( SELECT
     	 wip."BU",
         wip."DATE",
         count(DISTINCT wip."REF_NUM") AS "WIP",
         sum("HRS") AS "WIP HRS"
        FROM
         (SELECT DISTINCT 
         	a."BU",
            date_trunc('month', a."WIP_NORMAL") AS "DATE",
            a."REF_NUM",
              round((a."WIP" - a."OPEN_DATE")::NUMERIC(10, 0) / 60, 2) AS "HRS"
            FROM
             ( SELECT 
             "BU",
             "REF_NUM",
             "OPEN_DATE",
             min("WIP") AS "WIP",
             min("WIP_NORMAL") AS "WIP_NORMAL"
             FROM
              OpenedToPD ,
              ( SELECT 
              "TIME_STAMP_NORMAL" AS "WIP_NORMAL",
               "TIME_STAMP" AS "WIP",
               "CALL_REQ_ID"
                FROM 
                InterestedActLog
                WHERE
                 "ACTION_DESC" LIKE '%to ''In Progress''%') w
                WHERE 
                "PERSID" = w."CALL_REQ_ID"
                 AND w."WIP" >= "OPEN_DATE"
                 GROUP BY 
                 "BU",
                 "REF_NUM",
                 "OPEN_DATE"
                 
                UNION ALL
                 
                SELECT 
                "BU",
                "REF_NUM",
                "MIN_TR_IN" AS "OPEN_DATE",
                min("WIP") AS "WIP",
                min("WIP_NORMAL") AS "WIP_NORMAL"
                FROM TransferedToPD,
                (  SELECT
                 "TIME_STAMP_NORMAL" AS "WIP_NORMAL",
                 "TIME_STAMP" AS "WIP",
                 "CALL_REQ_ID"
                  FROM 
                  InterestedActLog
                  WHERE 
                  "ACTION_DESC" LIKE '%to ''In Progress''%' ) w
                WHERE 
                "PERSID" = w."CALL_REQ_ID"
                AND w."WIP" >= "MIN_TR_IN"
                GROUP BY 
                "BU",
                "REF_NUM",
                "MIN_TR_IN" ) a
            WHERE
             a."WIP_NORMAL" >= (  SELECT "FROM_DATE" FROM ts_cte )
             AND a."WIP_NORMAL" < ( SELECT "TO_DATE" FROM ts_cte )) wip
        GROUP BY
         wip."BU",
         wip."DATE") w2
        ON a."BU" = w2."BU"
        AND a."DATE" = w2."DATE"
    --------------------------------------------------------------------------------------BACKLOG TKTS     
    LEFT JOIN 
    (SELECT DISTINCT 
    "DATE",
    "BU",
    count(DISTINCT "REF_NUM") AS "BACKLOG",
    sum("BACKLOG HRS") AS "TOTAL BACKLOG HRS"
    FROM 
    ( SELECT DISTINCT 
    a."DATE",
    b."BU",
    b."REF_NUM",
    round((extract(epoch FROM date_trunc('day', d.monthend )+ interval '1 day')::NUMERIC(20, 0) - b."OPEN_DATE") / 3600, 2) AS "BACKLOG HRS"
     FROM 
     AreaList a,
     PUBLIC.date_dim d,
     OpenedToPd b
     --Get Max Transfer "Out" Timestamp
      LEFT JOIN
       ( SELECT DISTINCT 
       	max("TIME_STAMP_NORMAL") AS "MAX_TR_OUT",
        "CALL_REQ_ID"
       FROM 
       InterestedActLog
       WHERE      
      cfc_dw.is_transferred_from_department($P{Dept},"ACTION_DESC",$P{Team})
      AND NOT(cfc_dw.is_transferred_to_department($P{Dept},"ACTION_DESC",$P{Team}))
      GROUP BY "CALL_REQ_ID") h 
      ON b."PERSID" = h."CALL_REQ_ID"

        --Get Max Transfer "In" Timestamp
       LEFT JOIN 
       (SELECT DISTINCT
       	max("TIME_STAMP_NORMAL") AS "MAX_TR_IN",
        "CALL_REQ_ID"
        FROM
        InterestedActLog
        WHERE  
        cfc_dw.is_transferred_to_department($P{Dept},"ACTION_DESC",$P{Team})
        AND NOT(cfc_dw.is_transferred_from_department($P{Dept},"ACTION_DESC",$P{Team}))
        GROUP BY "CALL_REQ_ID" ) h2 
        ON b."PERSID" = h2."CALL_REQ_ID"

          WHERE
              a."BU" = b."BU" 
          AND a."DATE" = d.DATE
          AND b."OPEN_DATE_NORMAL" < (date_trunc('month',a."DATE")+interval '1 month')
          AND (b."CLOSE_DATE_NORMAL" >= (date_trunc('month',a."DATE")+interval '1 month') OR b."CLOSE_DATE_NORMAL" IS NULL)
          AND (h2."MAX_TR_IN" is null or h2."MAX_TR_IN" < (date_trunc('month',a."DATE")+interval '1 month'))  
               
          AND (h."MAX_TR_OUT" is null
               or (h."MAX_TR_OUT" < h2."MAX_TR_IN" and "MAX_TR_IN" < (date_trunc('month',a."DATE")+interval '1 month'))
               or (h."MAX_TR_OUT" >= (date_trunc('month',a."DATE")+interval '1 month') and (h."MAX_TR_OUT" > h2."MAX_TR_IN"  or h2."MAX_TR_IN" is null)))
             
           UNION ALL
             
            SELECT DISTINCT
             a."DATE",
             b."BU",
             b."REF_NUM",
             round((extract(epoch FROM date_trunc('day', d.monthend)+ interval '1day')::NUMERIC(20, 0) - b."MIN_TR_IN") / 3600, 2) AS "BACKLOG HRS"
            FROM 
            AreaList a,
            PUBLIC.date_dim d,
            TransferedToPd b

          --Get Max Transfer "Out" Timestamp
          LEFT JOIN 
          ( SELECT DISTINCT 
           max("TIME_STAMP_NORMAL") AS "MAX_TR_OUT",
           "CALL_REQ_ID"
           FROM 
           InterestedActLog
           WHERE           
           cfc_dw.is_transferred_from_department($P{Dept},"ACTION_DESC",$P{Team})
           AND NOT(cfc_dw.is_transferred_to_department($P{Dept},"ACTION_DESC",$P{Team}))
           GROUP BY "CALL_REQ_ID") h
           ON b."PERSID" = h."CALL_REQ_ID"

           --Get Max Transfer "In" Timestamp
            LEFT JOIN
            (SELECT DISTINCT
            max("TIME_STAMP_NORMAL") AS "MAX_TR_IN",
            "CALL_REQ_ID"
            FROM
            InterestedActLog
            WHERE          
            cfc_dw.is_transferred_to_department($P{Dept},"ACTION_DESC",$P{Team})
            AND NOT(cfc_dw.is_transferred_from_department($P{Dept},"ACTION_DESC",$P{Team}))
            GROUP BY "CALL_REQ_ID") h2
            ON b."PERSID" = h2."CALL_REQ_ID"
                 
WHERE 
              a."BU" = b."BU"
          AND a."DATE" = d.DATE  
          AND b."MIN_TR_IN_NORMAL" < (date_trunc('month',a."DATE")+interval '1 month')
          AND (b."CLOSE_DATE_NORMAL" >= (date_trunc('month',a."DATE")+interval '1 month') OR b."CLOSE_DATE_NORMAL" IS NULL)         
          AND (h2."MAX_TR_IN" is null or h2."MAX_TR_IN" < (date_trunc('month',a."DATE")+interval '1 month'))  
               
          AND (h."MAX_TR_OUT" is null
               or (h."MAX_TR_OUT" < h2."MAX_TR_IN" and "MAX_TR_IN" < (date_trunc('month',a."DATE")+interval '1 month'))
               or (h."MAX_TR_OUT" >= (date_trunc('month',a."DATE")+interval '1 month') and (h."MAX_TR_OUT" > h2."MAX_TR_IN"  or h2."MAX_TR_IN" is null))))bck
        GROUP BY
        "DATE",
        "BU") bk
           ON a."DATE" = bk."DATE"
           AND a."BU" = bk."BU")
SELECT 
2,
"BU",
"DATE",
"OPENED",
"WIP",
CASE  WHEN "WIP" = 0  THEN 0  ELSE 
round("PD_HRS_TO_WIP" / "WIP", 2)  END AS "AVG HRS TO WIP",
CASE  WHEN "ESCALATED" = 0  THEN 0  ELSE 
round("ESC_HRS" / "ESCALATED", 2)  END AS "AVG HRS TO ESC",
"CANCELLED",
"TRANSFERRED",
"RESOLVED",
CASE WHEN "RESOLVED" = 0  THEN 0 ELSE 
round("TOTAL_HRS_TO_RES" / "RESOLVED", 2) END AS "AVG TOTAL HRS TO RES",
CASE WHEN "RESOLVED" = 0 THEN 0  ELSE 
round("PD_HRS_TO_RES" / "RESOLVED", 2)  END AS "AVG DEPT HRS TO RES",
CASE WHEN "LESS_THAN_8" = 0  THEN 0 ELSE 
("LESS_THAN_8"::NUMERIC / "RESOLVED"::NUMERIC) END AS "LESS_THAN_8_%",
CASE WHEN "LESS_THAN_8" = 0  THEN 0 ELSE 
round(("LESS_THAN_8"::NUMERIC / "RESOLVED"::NUMERIC)*100,2) END AS "LESS_THAN_8",
"BACKLOG",
CASE WHEN "BACKLOG" = 0 THEN 0 ELSE
 round("TOTAL BACKLOG HRS" / "BACKLOG", 2) END AS "AVG BACKLOG AGING",
"FROM_DATE",
"TO_DATE",
to_char(date_trunc('day',current_timestamp::timestamp without time zone ),'MM/dd/yyyy') as current_date,
to_char(date_trunc('year',current_timestamp::timestamp without time zone ),'yyyy') as current_year

FROM 
detail
 
UNION ALL
 
SELECT
 1,
'TOTALS',
"DATE",
sum("OPENED") AS "OPENED",
sum("WIP") AS "WIP",
CASE  WHEN sum("WIP") = 0 THEN 0 ELSE
 round(sum("PD_HRS_TO_WIP") / sum("WIP"), 2)  END AS "AVG HRS TO WIP",
CASE  WHEN sum("ESCALATED") = 0 THEN 0 ELSE
 round(sum("ESC_HRS") / sum("ESCALATED"), 2)  END AS "AVG HRS TO ESC", 
sum("CANCELLED") AS "CANCELLED",
sum("TRANSFERRED") AS "TRANSFERRED",
sum("RESOLVED") AS "RESOLVED",
CASE  WHEN sum("RESOLVED") = 0  THEN 0 ELSE 
round(sum("TOTAL_HRS_TO_RES") / sum("RESOLVED"), 2) END AS "AVG TOTAL HRS TO RES",
CASE  WHEN sum("RESOLVED") = 0 THEN 0 ELSE 
round(sum("PD_HRS_TO_RES") / sum("RESOLVED"), 2)  END AS "AVG DEPT HRS TO RES",
CASE  WHEN sum("LESS_THAN_8") = 0  THEN 0 ELSE 
(sum("LESS_THAN_8") / sum("RESOLVED")) END AS "LESS_THAN_8_%",
CASE  WHEN sum("LESS_THAN_8") = 0  THEN 0 ELSE 
round((sum("LESS_THAN_8") / sum("RESOLVED"))*100,2) END AS "LESS_THAN_8",
sum("BACKLOG") AS "BACKLOG",
CASE WHEN sum("BACKLOG") = 0 THEN 0  ELSE 
round(sum("TOTAL BACKLOG HRS") / sum("BACKLOG"), 2)  END AS "AVG BACKLOG AGING",
"FROM_DATE",
"TO_DATE",
to_char(date_trunc('day',current_timestamp::timestamp without time zone ),'MM/dd/yyyy') as current_date,
to_char(date_trunc('year',current_timestamp::timestamp without time zone ),'yyyy') as current_year
FROM 
detail
GROUP BY
 "DATE" ,
 "FROM_DATE" ,
 "TO_DATE",
to_char(date_trunc('day',current_timestamp::timestamp without time zone ),'MM/dd/yyyy'),
to_char(date_trunc('year',current_timestamp::timestamp without time zone ),'yyyy') 

ORDER BY 1,2,3
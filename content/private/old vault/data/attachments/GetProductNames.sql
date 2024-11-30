CREATE OR REPLACE FUNCTION cfc_dw."GetProductName"(
	p_affected_service character varying)
    RETURNS TABLE(product text, own_resource_uuid character varying, resource_name character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN

	RETURN QUERY

	SELECT 	t.product::text as product, 
		t.own_resource_uuid,
		t.resource_name
		FROM (
			SELECT 	coalesce(case when (lower(e."RESOURCE_NAME") like '%vine%' and e."RESOURCE_NAME" != 'DHS VINE') or lower(e."RESOURCE_NAME") like '%stat% so%' or lower(e."RESOURCE_NAME") like '%statewide choice%' or lower(e."RESOURCE_NAME") like '%ops' or 
				  lower(e."RESOURCE_NAME") like '%cirs' or lower(e."RESOURCE_NAME") like '%statewide waspc%' then 'VINE' else 
				  case when lower(e."RESOURCE_NAME") in ('aries','buycrash','buycrimes','docview','fires','gears','get crash report','il avrs','titan','necrash') then 'BUYCRASH' else
				  case when (lower(e."RESOURCE_NAME") in ('aa - alert express','aa - american airlines','aa - profile based','aa - ticket delivery','aa - crew notifications','aa - notifications','aa - erefunds','aa - auto upgrade' ) or lower(e."RESOURCE_NAME") like '%airline%') then 'AMERICAN AIRLINES SUPPORT' else
                                  case when lower(e."RESOURCE_NAME") like '%nplex le%' then 'NPLEx LE' else
				  case when lower(e."RESOURCE_NAME") not like '%nplex le%' and lower(e."RESOURCE_NAME") like '%nplex%' or lower(e."RESOURCE_NAME") like '%pharmac%' or lower(e."RESOURCE_NAME") like '%pos vendor%' or lower(e."RESOURCE_NAME") like '%drug%' or lower(e."RESOURCE_NAME") like '%store%'
				  or lower(e."RESOURCE_NAME") like '%super mark%' or lower(e."RESOURCE_NAME") like '%price chopper%'then 'NPLEx' else
				  case when lower(e."RESOURCE_NAME") like '%amburn pmp%' or lower(e."RESOURCE_NAME") like '%pmp otech%' then 'PMP' else
				  case when lower(e."RESOURCE_NAME") like '%methcheck%' then 'METHCHECK' else
				  case when lower(e."RESOURCE_NAME") like '%narxcheck%' then 'NARxCHECK' else
				  case when lower(e."RESOURCE_NAME") like '%mobile%' then 'MOBILE PATROL' else
				  case when lower(e."RESOURCE_NAME") like '%justicexchange%' or lower(e."RESOURCE_NAME") like '%tdex%' or lower(e."RESOURCE_NAME") like '%jx %' then 'JUSTICEXCHANGE' else
				  case when lower(e."RESOURCE_NAME") like '%risk%check%' or lower(e."RESOURCE_NAME") like '%risk%intelligence%' then 'RISK INTELLIGENCE' else
				  case when lower(e."RESOURCE_NAME") like '%icots%' then 'ICOTS' else
				  case when lower(e."RESOURCE_NAME") like '%vpo%' then 'VPO' else
				  case when lower(e."RESOURCE_NAME") like '%escape%' then 'ESCAPE' else
				  case when lower(e."RESOURCE_NAME") like '%alertxpress%' then 'ALERTXPRESS' else
				  e."RESOURCE_NAME" End End End End End End End End End End End End End End End,'NONE ENTERED') as product,
				  e."OWN_RESOURCE_UUID" AS own_resource_uuid,
				  e."RESOURCE_NAME" as resource_name
			FROM 	cfc_dw.ca_owned_resource e
			WHERE	e."OWN_RESOURCE_UUID" = p_affected_service
		) t;
END;
$BODY$;

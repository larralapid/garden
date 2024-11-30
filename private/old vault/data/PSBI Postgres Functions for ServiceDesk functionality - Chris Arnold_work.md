---
tags: email
created: 2022-11-11T23:41:26-05:00
updated: 2022-11-12T15:10:43-05:00
---

Chris/Lars,

Cheri asked me to send you some queries that we have setup in functions to work with the ServiceDesk system data. These queries are attached.  There is a sample query attached as well showing how the “is*” functions are being used to obtain the information needed to be reported on.  Please reach out if you have questions.  

There are 5 queries attached

1.  GetProductNames.sql
2.  Is_transferred_to_department.sql
3.  Is_transferred_from_department.sql
4.  Is_associated_with_department.sql
5.  Is_assigned_to_department.sql
6.  Sample Query of these functions being used to provide report data

**GetProductName**

This function contains logic that will provide a product name based on the resource_name (parameter p_affected_service) of the ticket in question.

**Is_transferred_to_department.sql, Is_transferred_from_department.sql, Is_associated_with_department.sql, Is_assigned_to_department.sql**

These functions all operate in a similar manner in conjunction with a configuration table.  The table in question is call sd_tkt_grp_activity.  Its structure is shown below along with some sample data.  The purpose of these functions is to add in the determination of the actions being identified by the name of the function.  The data being sent into the function comes from either the cfc_dw.call_req, cfc_dw.act_log, cfc_dw.chg, cfc_dw.chg_alg tables in the data warehouse which are just etl’ed copies of those tables in the ServiceDesk mdbadmin schema.  

_TABLE cfc_dw.sd_tkt_grp_activity_

_(_

 _id integer NOT NULL DEFAULT PRIMARY KEY,_

 _dept character varying(24) NOT NULL PRIMARY KEY,_

 _operation character varying(32) NOT NULL PRIMARY KEY,_

 _statement character varying NOT NULL,_

 _team character varying(64)_

_)_


Thanks

Chris

***
attachments:
- [[GetProductNames.sql]]
- [[is_assigned_to_department.sql]]
- [[is_associated_with_department.sql]]
- [[is_transferred_to_department.sql]]
- [[is_transferred_from_department.sql]]
- [[Sample Query Showing use of is functions.sql]]
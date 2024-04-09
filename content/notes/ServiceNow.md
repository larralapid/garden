---
up: 
id: em34jspzi3j856n93p7tqy0
title: ServiceNow
desc: ""
updated: 2024-04-09 06:55:06 PM
created: 2024-03-12 02:32:42 AM
tags: daily
---
- Protected global application files can be unlocked when moving it to a globally scoped app 
- the dispatchers in servicenow are in the sys_declarative_action_payload_definition_listsys_declarative_action_payload_definition
- prevent duplicate retrieved update sets
	- before cloning, in the source instance, go to local update sets. 
	- set the condition to filter for update sets where the "installed" from value is the target instance (usually a subproduction instance)
	- Set the state to ignore
- sys_property:: com.glideapp.report.description_config 
	- table and field description configuration for reports
- as of 2017, database views did not support dot walking 
- variables can show up on a task if the task i created via record producer submission 

- [ ] what's the glide_report.enable_alias_config property?  #question 

## login url w/ creds
```
[instancename].service-now.com/login.do?sysparm_user_name=[username]&sysparm_user_password=[pw]&sys_action=sysverb_logincch
```
## sc task and vars structure 
var name 
	from sc_item_option
var value
	sc_item_option
ritm
	sc_task
	sc_item_option_mtom
		parent item - ritm
		dependent item - sys id of sc_item_option
sctask
	sc_task
assignee of sctask 
	sc_task

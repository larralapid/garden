# ServiceNow
as of 2017, database views did not support dot walking 

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

variables can show up on incident if the incident is submitted via record producer [[private/ServiceNow]]

#snippet https://apprissdev.service-now.com/login.do?sysparm_user_name=systableread&sysparm_user_password=11111111&sys_action=sysverb_login

[instancename].service-now.com/login.do?sysparm_user_name=[username]&sysparm_user_password=[pw]&sys_action=sysverb_logincch
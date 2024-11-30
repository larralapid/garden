contacts are internal users 
	this means we need to skip actual internal users and make sure there is an ad record 
	and somehow tie it to org 
	also used for groups
		dont have first name
		group name in last name field 
		the first name is blank and last name has name of group
		group membership table: GRPMEM
	web accounts not in AD (service accounts)
	internal users might not always

next steps for service mapping
	the affected service transform will: 
		- create business service 
		- create application service where the type is manyally created (ci type is business service & select the business service product offering) one is created per business service 
		- for each business service, by script, create one relationship between it and the next layer of discoveryable CI(s)
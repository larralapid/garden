---
tags: integration-hub, spoke, global
---
JIRA:SERVICENOW-1712

how much effort to make it dynamic? 
every time there is an update, insert, or delete in prod, then import them into dev 

#### spoke dependencies 
com.glide.hub.integration.runtime
com.glide.hub.action_type.datastream
com.glide.cobject
com.glide.hub.dynamic_outputs
com.glide.hub.action_step.rest
com.glide.hub.dynamic_inputs

dev and test is missing dynamic outputs 
not in sys_plugins table 
not in v_plugin table 

found the servicenow remote instance spoke in the apps table in dev, maybe its not showing up in prod because the sub prod install is missing 

- [x] how do we get teh instance data replicaiton spoke, set this up
- [x] install in dev
- [x] install in prod 
- [x] install in test 
- [ ] configure in dev
	- [ ] [[flow_csdm sync from prod]] daily at 1700

^^ alright this is all out of scope. stop scope creepin' ya dumb bitch. just import the normal way 
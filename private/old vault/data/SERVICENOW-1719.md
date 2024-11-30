---
tags:
aliases:
cssclass:
created: 2022-11-14T17:26:08-05:00
updated: 2022-11-15T17:51:39-05:00
---

### notes from (journal:: [[2022-11-14]])
SOLUTION:: create a flow in dev to trigger an import to the task environment 
created [scheduled job](https://apprisstest.service-now.com/nav_to.do?uri=sys_trigger.do?sys_id=4ef869ce1b3299101dac42e58d4bcb6d)
- [x] create update set only for dev
#### research phase
- [x] check share and see if theres a demo data generator 
- [x] check community 
- [x] store app? 
	- [x] stave has a "data generator" app 
- [x] can we use atf to create test data? 
      answer is no, not dynamic enough. need to enter specific field values in test step configs 
- [x] remote instance spoke? 
      level of effort: a few hours 
- [x] trigger from prod to push to sub prods ? 
- [x] or initiate pull from test? 

insert by script triggers business rules 
but importing skips business rules 
where is the sensitive data in prod? 
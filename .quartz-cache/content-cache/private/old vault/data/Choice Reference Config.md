---
tags: servicenow, utility, custom-application, scope/global
---

application file in apprissdev -- > [ChoiceReferenceConfig Script Include](https://apprissdev.service-now.com/nav_to.do?uri=sys_script_include.do?sys_id=38eb308387a35510e8d664250cbb35cc)

#### system application files
**tables**
u_choice_reference_definition
u_choice_reference_definition_item

- [ ] decions to make
	- [ ] what sys_dictionary types are considered choices? 
	- [ ] capture in system property?

used by [[Court Ops|court operations]]
brainstorm notes are in [[choice reference config.canvas]]
reference the method getBusinessCalendarGroups() in [PAUtils Script Include](https://apprissdev.service-now.com/nav_to.do?uri=sys_script_include.do?sys_id=5d115002c32301006568506adfba8f28)

## Implementation Rules
- for tables in custom scopes (extended from an global oob base table like task)
	- 
	- create [[dictionary attribute override ]] in the custom scope
		- [ ] why?
		      # pros
			      makes debugging and troubleshooting shit easier because if its not in global where majority of oob applications live, and its within a scope with less application files, it'll be easier to locate and identify
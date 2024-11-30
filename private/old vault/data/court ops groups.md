[[Court Ops|court operations]]

### SERVICENOW:1736
- [x] create groups with same parent
	- [x] Court Operations I
	- [x] Court Operations II
	- [x] Court Operations III
- [x] Export group records to xml
- [x] import xml to test 
- [x] import xml to prod 
- [ ] add ticket type so that they can be selected as fulfiller group 
      groups that have the ticket type "Court Ops"
  - When a group record has ticket type court ops, it allows all child groups to be selected as an assignment group 
  - application nav --> Team Management 
	  - [ ] add module for workspace admins only 
	        module should take them to a list view of user groups with a dynamic filter 

- [ ] add acl to sys_user_group
- [ ] add acl to group member 
- [ ] if the type is court ops, selected group members may only be members a part of the parent group 
#### hiccups 
- could not find user shelly mcdowell
- there are 2 mary johnsen records

### SERVICENOW-1739
possible solutions
use fulfiller group on catalog item 
from user group, related list --> select catalog items that are under the court ops category 
- [x] create "manager" view on sys_user_group 
- [ ] create in the global scope 
- [ ] create a way for manager to easily associate group with catalog item from group form view 
	- [ ] create a relationship so that the ui action on the related list shows "edit" instead of "new", omit new 

## new stories to add 
- [ ]  give category manager or court ops group manager ability to modify group members for child groups of court ops group 
	- [ ] update maintain service view 
- [ ] 
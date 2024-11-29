---
tags:
aliases:
cssclass:
created: 2022-11-15T11:14:46-05:00
updated: 2022-11-15T12:52:54-05:00
---

security debug impersonating as matt sweeney in dev didn't show anything
also ran the script tracer as me 
- [x] debug all security rules in prod 
	- [x] [record/sys_portal_page](https://appriss.service-now.com/sys_security_acl.do?sys_id=b3a89201c0a80a6b01740f12934f7e99)
	      nothing jumps out at me 
	- [x]   ui_action/c4bf079353323010d82dddeeff7b12fa/execute
	- [x] [**ui_page/email_diagnostics/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=9c0b63817f33020097385212bdfa9164)
	      checked it out and it requires email_diagnostic_viewer role which is already granted to the noc user group 
	  - [x] ui page: email_diagnostics
	- [x] [**record/sys_script/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=8d305bdec0a801664c184baaac216339)
	- [x] [AJAXEmailConnection](https://appriss.service-now.com/sys_script_include.do?sys_id=c4ad3121eb510200c8690e815206fef2)
		- [x] [**client_callable_script_include/*/execute**](https://appriss.service-now.com/sys_security_acl.do?sys_id=8c9db353931102009c8579b4f47ffbc7)
	- [x] [Ensure Valid Schedule](https://appriss.service-now.com/sys_script.do?sys_id=21e8e4940a0a0b8400318fe1bb75cc01)
	- [x] [Debugger Log Viewer -definitely check this one out ](https://appriss.service-now.com/sys_amb_processor.do?sys_id=4d52f5f27367230010d533083cf6a72d)
		- [x] [**record/*/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=7c75c2e5c0a801664f9bc9e9d72e7ccd)
		      nothing promising
		- [x] [**record/*/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=9e0169f85bb11200cadc853291f91a2c)
		      nothing promising 
		- [x] [**record/*/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=bbc0f1225f011000b12e3572f2b4776b)
			- [x] check out the approverutils script include canApproversRead()
- [x] do i need to create a rea acl on the email account table? 
- [x] ui macros
	- [x] https://apprissdev.service-now.com/nav_to.do?uri=sys_ui_macro.do?sys_id=a54b03afefb101002841f7f775c0fbeb
	- [x] https://appriss.service-now.com/nav_to.do?uri=sys_ui_macro.do?sys_id=11fabf05ef6321002841f7f775c0fbeb
	- both ui macros call EmailDiagnostics script include

- [x] prod changes 
	- [x] [https://appriss.service-now.com/nav_to.do?uri=sys_security_acl.do?sys_id=cf90e9d3ff02201001d3cd6bd53bf1d0](oauth_credential.token_issued)
	- [x] [oauth cedential token](https://appriss.service-now.com/nav_to.do?uri=sys_security_acl.do?sys_id=02e25d530b20230001d36c4d37673a6c)

THE OAUTH ACL UPDATES WORK
- [x] update token issued acl in dev
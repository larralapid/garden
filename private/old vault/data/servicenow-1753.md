![[Pasted Image 20221118160620.png]]


[Data Operations T2](https://appriss.service-now.com/pa_dashboards.do?sys_id=1943dab387fd51905bb78596cebb35e4)

can marcus see this incident [INC0037654](https://appriss.service-now.com/incident.do?sys_id=a858b9c787299514d3b5642c8bbb3553)
![[Pasted image 20221118162727.png]] added 3 columns to the outages unassigned table

this is an oob acl https://apprissdev.service-now.com/nav_to.do?uri=sys_security_acl.do?sys_id=7da37832c0a801662678a235d68675c6 i reverted it back to baseline and marcus could see the fields in question, deactivating it again and reimpersonating 

[[2022-11-21]]
p sure i pushed my update set on friday and still experiencing the same issue 
^^ YEP
- [x] check roles for marcus and compare between prod and dev 
      looks like two records are missing....well from dev. doesnt matter 
- [ ] compare acls between prod and dev 
      2 ACLS MISSING =IN PROD THAT DEV HAS....but they dont seem to matter 
- [ ] [**record/sys_report/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=90029ca10a0a0b440114ffbb79bfe100)
- [ ] [**record/sys_report/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=90029ca10a0a0b440114ffbb79bfe100)
- [ ] [**record/incident/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=546553d487300300b309452c97cb0b3f)
- [ ] [**record/incident/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=ff7a5e513bd2330017142c2b54efc451)

- [ ] [**record/task/report_on**](https://appriss.service-now.com/sys_security_acl.do?sys_id=1f81c27f6fb7d100ad775ddd5d3ee40c)
- [ ] [**record/task/report_on**](https://appriss.service-now.com/sys_security_acl.do?sys_id=1f81c27f6fb7d100ad775ddd5d3ee40c)
- [ ] [**record/sys_report/read**](https://appriss.service-now.com/sys_security_acl.do?sys_id=90029ca10a0a0b440114ffbb79bfe100)

give marcus' group the service viewer and report access role 

https://www.servicenow.com/community/it-service-management-forum/how-to-get-priority-level-list-in-incident-form-via-rest-api/m-p/666915#M238694 some dude says to use /api/now/ui/meta/incident. 
	great tip, it actually works 
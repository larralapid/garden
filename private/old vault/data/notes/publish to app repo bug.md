Hope you are doing well. I investigated further into the issue and it seems there could be multiple issue:  
Firstly it seems from the branch in sys_repo_config, current reference is not correct:  
In studio, "Switch branch" to a branch which has correct application files or update the sys_repo_config record setting the current_branch field to the correct branch.  
Please see this document as reference:  
https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB1122044  
  
Secondly, I did see some warning and error related to MID server: "Got message from the MID server. Message id: 03016de987d3e190e8d664250cbb3583 Topic: RefreshRepositoryProbe Tracker id: fef029e11b936110f9ab6465ec4bcb09 Agent attachment id: ca0165251b936110f9ab6465ec4bcb41 Repo id: 5d5e59da1b059d90f9ab6465ec4bcb0e Error message: org.eclipse.jgit.api.errors.TransportException: https://stash.sdlc.appriss.com/scm/servicenow/court-ops.git: not authorized"  
Please review the following documents:  
https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB1005193  
https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB0994264


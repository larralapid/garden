---
up: 
doc_type: hypothesis-highlights
url: https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB0823731
title: How to resolve inconsistent behavior for an inbound email skipping all inbound email actions? - Support and Troubleshooting
author: "[support.servicenow.com]()"
tags:
  - servicenow
created: 2023-11-29 10:58:16 AM
updated: 2024-04-09 07:13:27 PM
---

## Page Notes
## Highlights
- The root cause is starting from New York release, ServiceNow introduced a new function called Inbound Email Triggers for #flow-designer. With this new feature all emails are firstly processed by the Inbound Email Triggers before they are processed by Inbound Email Actions. This is the reason why target record is still being associated with the inbound email even there is no matching inbound email actions. In the email log, users can observe one more log entry as below. — [Updated on 2022-06-03 13:50:07](https://hyp.is/mxv54ONlEey_ObvYxN46XA/support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB0823731) — Group: #Public




---
title: 
up: 
tags:
  - servicenow
  - service-catalog
created: 2024-03-27 06:17:19 PM
updated: 2024-04-09 05:36:46 PM
---

| table               | order | var prefix | where clause                    |
| ------------------- | ----- | ---------- | ------------------------------- |
| sc_item_option_mtom | 100   | mtom       |                                 |
| sc_item_option      | 200   | optn       | optn_sys_id=mtom_sc_item_option |
| sc_req_item         | 300   | ritm       | ritm_sys_id=mtom_request_item   |
- issues 
	- creating a report 
		- some questions are sys ids 
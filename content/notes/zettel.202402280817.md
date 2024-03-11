---
up: 
tags: 
id: ybpt1te83dpe89qred69d6x
title: zettel.202402280817
desc: ""
updated: Monday, March 11th 2024, 6:21:09 pm
created: Monday, March 11th 2024, 12:44:11 pm
---

```mermaid
graph TD
NP(NotePlan) --> RPN(Review Previous Day's Notes)
NP --> MT(Manage Tasks)
	MT --> CT(Complete Tasks)
	MT --> CaT(Cancelled Tasks)
	MT --> ST(Scheduled Tasks)
	NP --> AD(Analog Diary)
		Setapp -.-> |Access to apps| NP
	Setapp -.-> |Access to apps| VSCode
	iCloud -.-> |Sync| NP
	iCloud -.-> |Sync| VSCode
	iCloud -.-> |Sync| Obsidian
	iPad -.-> |Mobile Access| NP
	iPad -.-> |Mobile Access| Obsidian
	iPad -.-> |Mobile Access| iCloud
	
	AD --> Obsidian
	NP --> Obsidian
		VSCode --> GH(GitHub)
		GH --> V(Vercel)
	V --> DG(Digital Garden)
```
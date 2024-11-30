---
up: 
id: ybpt1te83dpe89qred69d6x
title: hardware
desc: ""
updated: Friday, November 29th 2024, 4:50:38 pm
created: Monday, March 11th 2024, 12:44:11 pm
tags:
  - nav-bar
aliases:
  - my setup
sibling: "[[notes/evaluations]]"
---
Tools I have actually implemented into my workflow, habits, automations, manual processes, devices, things i touch, where my data lives 

- [[raycast]]
- [[dotfiles]]
- devon
	- devonsphere express 
	- devonthink 3 pro
- bettertouchtool 
- setapp 
- streamdeck 
- macbook 
- vscode 
- github 
- typingmind
- hammerspoon 
- [[alfred]]


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

# hardware
- logitech lift vertical mouse

----
[[notes/ecosystem.current state]]
[[evaluations]]
[[implementations]]
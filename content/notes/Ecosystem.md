---
up: 
title: ecosystem
desc: my tool suite and how i do stuff
updated: 2024-04-04 03:08:31 PM
created: 2024-03-12 12:55:18 AM
tags:
  - nav-bar
aliases:
  - my setup
sibling: "[[infra.apps]]"
---
#### reference maps & standardization
- [[frontmatter attributes]]
#### toolsuite
- [[noteplan]]
- [[raycast]]
- [[dotfiles]]
- [[obsidian]]
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

---
- failed implementations
	- [[chrome]]
		- ~~Use browser profiles for "areas"~~ 
			- ~~testing profile~~
				- ~~test browser extensions~~ 
				- ~~test chrome flags~~ 
			- ~~dev profile~~ 
				- ~~chrome extension environment~~ 
			- ~~Research~~
				- ~~use tab groups per project~~ 
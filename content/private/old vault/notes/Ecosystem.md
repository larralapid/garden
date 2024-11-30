---
up: 
title: Ecosystem
desc: my tool suite and how i do stuff
updated: 2024-06-14 06:02:16 PM
created: 2024-03-12 12:55:18 AM
tags:
  - nav-bar
aliases:
  - Hardware
  - hardware
  - my setup
sibling: "[[infra.apps]]"
---
The one "thing" (idk what to call it. entry point? touch point? core component?) in my ecosystem that is engrained for the rest of my life is my analog [[notes/diaries|diaries]]
#### Reference Maps & Standardization
- [[frontmatter attributes]]

#### Toolsuite (digital touchpoints)
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

# Hardware
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


- using [[noteplan]] and [[obsidian]] in my Ecosystem flow
	- what kind of stuff goes in which? 
		- [[noteplan]] 
			- activity log 
			- decisions made 
			- active projects 
			- out of scope
				- zettels and fleeting thoughts 
				- consumption lists (reading list, to watch list)
				- irrelevant research 
	- [[obsidian]]
		- research 
		- zettels 
		- incomplete thoughts 
		- #til stuff 
		- #dicking-around activity logs 
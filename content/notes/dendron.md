---
id: cuax3m3d7qt84n9m30bsg8k
title: dendron
desc: ""
updated: Monday, March 11th 2024, 7:04:43 pm
created: Monday, March 11th 2024, 12:44:11 pm
tags:
  - note-taking
  - linked-notes
  - vscode
up: "[[notes/evaluations]]"
---
- tried in [[2023]], didn't stick
- tried again in [[2024]] and i still don't love it especially for [[digital garden]]
	- #instead will use obsidian with the git #plugin
### Updating Dendron for GitHub Pages Deployment

When attempting to update Dendron so that it updates GitHub Pages, the following sequence does not work as an appropriate next step:

1. `git commit`
2. `dendron: site build`

Next, the following command was tried:

- `npx dendron buildSite --stage prod` followed by `git commit`

**This worked.**
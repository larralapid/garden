---
id: cuax3m3d7qt84n9m30bsg8k
title: dendron
desc: ""
updated: 2024-03-11
created: 2024-03-11
tags:
  - note-taking
  - linked-notes
  - vscode
up: "[[infra.apps]]"
---
- tried in [[notes/2023]], didn't stick
- tried again in [[2024]] and i still don't love it especially for [[digital garden]]
	- #instead will use obsidian with the git #plugin
### Updating Dendron for GitHub Pages Deployment

When attempting to update Dendron so that it updates GitHub Pages, the following sequence does not work as an appropriate next step:

1. `git commit`
2. `dendron: site build`

Next, the following command was tried:

- `npx dendron buildSite --stage prod` followed by `git commit`

**This worked.**
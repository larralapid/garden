---
id: cuax3m3d7qt84n9m30bsg8k
title: Dendron
desc: ''
updated: 1710175659924
created: 1710175659924
tags:
  - note-taking
  - linked-notes
  - vscode
---
- tried in 2023, didn't stick
### Updating Dendron for GitHub Pages Deployment

When attempting to update Dendron so that it updates GitHub Pages, the following sequence does not work as an appropriate next step:

1. `git commit`
2. `dendron: site build`

Next, the following command was tried:

- `npx dendron buildSite --stage prod` followed by `git commit`

**This worked.**
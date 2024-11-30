---
created: 2022-11-11T23:41:26-05:00
updated: 2022-11-12T14:46:42-05:00
---
[[better touch tool]]

i want to quickly toggle from work windows to break time side project windows 
need to know which windows are work windows 
maybe i can create a variable that is an object of all active windows using either [[alfred]]


```mermaid
graph TD 
alfred[alfred prompt]-->typeKeyword[keyword: window]
typeKeyword-->hasArgument[has argument]
typeKeyword-->noArgument[no argument]
noArgument-->noArgumentPath1-->getRunningApplications[get running apps]
noArgument-->noArgumentPath2---->getSavedWorkspaces[get saved workspaces]-.->displayInList[display in list]
inputNewWorkSpace-.->displayInList
getRunningApplications-->organizeModeStart[begin organize mode]
organizeModeStart-->selectWindow[select window for running app]
selectWindow-->addToWorkspace[add to workspace ]

```

[[dotfiles]] 
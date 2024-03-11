---
id: ko17eui8p10j100s04glbjd
title: "202402280932"
desc: ""
updated: 1710177569489
created: 1710177569489
---
prevent duplicate retrieved update sets in [[servicenow]] 
- before cloning, in the source instance, go to local update sets. 
- set the condition to filter for update sets where the "installed" from value is the target instance (usually a subproduction instance)
- Set the state to ignore


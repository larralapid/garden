---
up: 
tags: 
id: ko17eui8p10j100s04glbjd
title: zettel.202402280932
desc: ""
updated: Monday, March 11th 2024, 6:21:09 pm
created: Monday, March 11th 2024, 12:44:11 pm
---
prevent duplicate retrieved update sets in [[servicenow]] 
- before cloning, in the source instance, go to local update sets. 
- set the condition to filter for update sets where the "installed" from value is the target instance (usually a subproduction instance)
- Set the state to ignore


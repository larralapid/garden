---
up: 
id: mfqil1jbwxpg39ihfvzmxxj
title: zettel.20230426
desc: ""
updated: Monday, March 11th 2024, 6:21:10 pm
created: Monday, March 11th 2024, 12:44:11 pm
tags: daily
---
while building [[super volunteer]] i ran into an issue with the tinder pile element ([[bubble.io]]). 
- filtering to show users that don't have the same user type as the current user 
- sometimes element wouldn't be displayed at all 
- how i got it working
	- added a data rule to the user table WHEN this user's user type is not current user's user type 
	- data source 
		search for users:filtered user type <> current user's user type 

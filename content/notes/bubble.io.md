---
up: 
tags: daily
id: mfqil1jbwxpg39ihfvzmxxj
title: bubble.io
desc: ""
created: Monday, March 11th 2024, 12:44:11 pm
updated: Monday, March 11th 2024, 6:34:14 pm
---
while building [[super volunteer]] i ran into an issue with the tinder pile element
- filtering to show users that don't have the same user type as the current user 
- sometimes element wouldn't be displayed at all 
- how i got it working
	- added a data rule to the user table WHEN this user's user type is not current user's user type 
	- data source 
		search for users:filtered user type <> current user's user type 

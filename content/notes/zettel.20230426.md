---
id: mfqil1jbwxpg39ihfvzmxxj
title: '20230426'
desc: ''
updated: 1710177569295
created: 1710177569295
tags: daily
---
while building [[super volunteer]] i ran into an issue with the tinder pile element ([[bubble.io]]). 
- filtering to show users that don't have the same user type as the current user 
- sometimes element wouldn't be displayed at all 
- how i got it working
	- added a data rule to the user table WHEN this user's user type is not current user's user type 
	- data source 
		search for users:filtered user type <> current user's user type 

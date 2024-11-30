---
title: diaries
created: 2024-06-14 05:51:58 PM
updated: 2024-07-03 11:56:18 AM
tags:
  - project
---
a curiosity driven exploration project based on my analog diaries 

- if a database is a component i'm gonna be using no matter what with this project, and stuff in the database is relevant to the raw diary entry then why do i also need a thing specifically for storing the images? 
	- whatever i end up using for image hosting, this is the first place raw diary images/pdfs will be inserted. this is the first source of truth. 
	- both are needed because what if something gets fucked up with the database and i lose all the images? 

- [x] decide on where to store images of diary entries #started
	- **DECISION**: local storage, self hosted solution. m1 laptop? 
	- research 
		- images or pdfs? 
			- which is smaller 
			- which is most compatible with accurate text detection? 
	- requirements 
		- free 
		- easy to use api 
		- easy to insert 
		- existing toolsuite compatibility 
	- options 
		- github repo 
		- storj
			- Decentralized data storage like s3
	- brain dump
		- i'm thinking maybe something self hosted is the way to go. just feels right.
- [ ] self hosted image storage (finder just doesnt suffice)
	- is it actually a *storage* solution i'm looking for? or just easier ways to interact with the images, like a desktop client? a photo manager? 

Next steps
- upload files to storage 
---
up: 
tags: 
id: 0ojwnrs5dp3k1e74pkarv9d
title: vercel
desc: ""
updated: Monday, March 11th 2024, 6:21:10 pm
created: Monday, March 11th 2024, 12:44:11 pm
---
- root directory can't be "./"
- attempts
	- 1
		- input
			- framework preset: other
			- build command
				```
					npx quartz build
				```
			- install command
				```
				npm install
				```
			- root directory: public
			- output directory ./
		- public root directory doesnt exist
	- 2
		- input 
		- npx quartz build
		- no install command 
		- output path : null
		- no root directory
	- IT WORKS 
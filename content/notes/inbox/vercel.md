---
up: 
tags: 
id: 0ojwnrs5dp3k1e74pkarv9d
title: vercel
desc: ""
updated: 2024-04-09 06:53:16 PM
created: 2024-03-12 02:32:42 AM
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
---
id: 0ojwnrs5dp3k1e74pkarv9d
title: Vercel
desc: ""
updated: 1710177569526
created: 1710177569526
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
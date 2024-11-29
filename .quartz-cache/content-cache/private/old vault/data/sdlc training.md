---
tags: work/equifax
aliases:
cssclass:
created: 2022-11-13T15:43:01-05:00
updated: 2022-11-14T15:43:14-05:00
---
class 5: consumer protected data 
- requirements 
	- data at rest  is encrypted or tokenized at app layer 
	- data in transit is encrypted before transmission outside rhe immediate host or vm 
- examples
	- income and employment info
	- credit reports 
	- employee performance reviews 
	- verifiation info
	- consumer behavioral info 

class 4: restricted data 
- requirements
	- data at rest  is encrypted or tokenized at app layer or at service layer before the data is reposed 
		- service layer encryption requires effective access controls to protect the daa access layer 
	-  data in transit is encrypted before transmission outside rhe immediate host or vm 
- examples
	- corporate strategy documents 
	- intellectual property 
	- data inventories 
	- network diagrams 

class 3 - confidential data 

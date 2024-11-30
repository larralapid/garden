use cases
	tailored CRM 
	fine tuned model connected to
		emails
		decisions
		scraper
	immediate answers for clients
	personalized property recommendations
	online engagement
		ads 
lead tracking
scheduling appointments
data source scraping and streamline insights
listing descriptions
	seller's photos or video --> description


jeremey wants to be able to contact leads 
	- sms 
	- data source for leads? 
	- "be smart enough to talk to them"
	- initial assessment 
- - task management 
- task generation for others on the team 
- email/calendar integration

- how to get it to be "smart enough
- jeremy has used bing for real estate formulas 
- from start to finish 
- propstream? list source? 
- write leads 
- butlercountyauditor.org
	- [ ] scrape 
	- jeremy exports the entire contents for the county 
	- hamilton 
- jeremys use with chatgpt
	- working with copied and pasted content from a google sheet 
- the google sheet is so big , need database 
- merge scraped data with skip tracing to output who to talk to 
- theyre big on reporting with finances and forecasting
	- BASED ON REHAB THAT NEEDS TO BE DONE 
- mvp 
	- jeremy will send me a script 
	- reach out/cold call leads 
	- get the mbooked on a call w/ acquisitions team
	- communicate with buyers , get buyer criteria 
- dashboard 
	- text messages sent out 
	- sentiment analysis 
	- tasks by phase/state 
- reisift.io
	- their database
	- source of truth 
	- do they use any plugins with reisift? 
- data export for butler county 
- calendly 


---
started exploring data sources 
- exporting from butlercountyauditor.org site, that zip file 
- decided i'm going to trigger a rest request from back4app as a scheduled job to run an etl
- deciding what framework to use 
	- first round
		- flutter 
			- single codebase
			- rich ui and customization
		- graphql
			- query language and runtime for APIs, alternative to REST 
			- there might not be a use case for this though
		- react
	- second round 
		- flutter
		- react
	- winner: REACT 
- where to create react native project
	- EXPO
		- created a an expo.dev account 
			- larra.somastack
- you can create scheduled jobs in back4app
	- requires a cloud job (not a reference; freeform text)

----
[[sendblue]] 
	no free plans; starts at 39.99/month

- [ ] check out the [[figma]] plugin "kernel - content database"
17:26 looking into data modeling; i want to use an ai tool to generate schemas and data models 
17:33 looking into ai tools to process the downloaded data 
- [x] connect google drive 
- [ ] download property owners report 
- [ ] delingquent tax list
- [ ] property sales last 360 days
- [ ] dat file analysis ai 

trying appmaster.io to help with database design

omg i love [[appmaster.io]]

i guess i should start caring about licensing. going forward, [[somastack]] needs to use a license for anything that is publicly shared/published 
	i chose the [[gnu affero general public license v3.0]]


vscode database modeling tools
	- [x] iridium ...sucks

----
[[2023-07-21]]
- created cockroach DB (postgreSQL) 
- still trying to figure out 
	- continue manually checking each sheet in aa407 export_processed (google sheets) --> convert to csv --> use python to read the csv to create tables and columns in the cockroachDB 
	- why did i create all those jpegs? 
	- maybe i don't need a blueprint to process all the .dat files? 

-----
[[2023-08-03]]
progress so far
- Completed building database structure to store butlercountyauditor exported data
	- DB inserts still need to be completed 
- call script analysis & pre-workflow build mapping in twilio 
- began ui/ux; low fidelity wireframe 
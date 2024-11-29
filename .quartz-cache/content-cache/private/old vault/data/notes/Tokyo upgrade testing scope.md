- [ ] business processes on platform
	- [ ] which ones are critical 
- [ ] identify the applications involved in the processes 

example:
- business process: HR employee onboarding
	- HR Case
		- service catalog request
		- payroll request
		- facilities request 

- [ ] identify needed test plans 
	- application test plans
		- [ ] list modules for suites below
		- ITSM
		- ITOM
		- [ ] any others? see subscription management 
- [ ] application integration test plans 
- [ ] interace test plans 
- [ ] usability and platform performance 
- [ ] security
- [ ] where are we tracking the testing done by humans? servicenow test management? 
- [ ] Automate as many test cases as possible
- [ ] conduct manual testing of remaining functionality using test management module
- [ ] maybe its a good time to document a policy for system admins and devs to update test plans every time an app is configurd or customized

## defect logging
- submitting
	- what to include
		- mandatory
			- issue summary
			- steps to reproduce 
			- expected results
			- actual results 
		- optional
			- URLs
			- screen capture videos or screenshots
			- environment information
			- any other contextual info 
- when defect is being worked by dev
	- if issue is not reproducible, provide
		- name of affected user
		- date and time the behavior was last observed 
		- time zone

smoke testing (first sub prod) --> regression testing --> UAT 

- smoke testing
	- high level check
- regression testing (good candidates for atf)
	- key form functionality 
	- workflows
	- customizations 

### out of scope 
- in platform features
- tests included in atf testing
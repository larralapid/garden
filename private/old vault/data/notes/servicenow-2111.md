yesterday while testing
- execution steps when logging into servicenow by external log in 
	- was able to log in regardless of where sys_user record is 
- events 
	- external auth succeeded --> session established --> log in 

- [x] scheduled flow 
      run daily 
      no login in last 6 months, move to inactive class 
      fix script 
      for each record, if the class is the user class, move it to the active ad 
- [x] last login time greater than 6 months ago 
- [x] last login time today or some time in the last 6 months 
- [ ] update u_last_sync with transform map
  - [ ] when last log in time changes, update class to sys_user
  - [ ] check production and see what's different from the other instances 
  - [ ] missing user id 
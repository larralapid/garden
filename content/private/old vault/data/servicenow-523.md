516 active deduplication tasks in prod 
508 in dev

10:09PM 450 tasks
11:33PM 375 tasks

# decisions
- deleted all tasks older than a year. going to closely monitor
# next steps? 
- [ ] set up remote instance spoke from prod first ? 
- [ ] or is there something out of box where if i delete from prod, itll delete from dev ?
- [ ] maybe need to create story to confiure ID engine to skp duplication (id includsion rules). need to ensure that they are configured to exclude duplicate cis during identification. this will prevent new de dupe tasks w/ same dupe CIs 
- [ ] cmdb heatlh dashboard -correctness score calculation - execute this after doing dupes
- [ ] address "solen" and "absent" cis
work
	on press --> GET https://jira.appriss.com/rest/auth/1/session
dock
log note 
log to do 
log doing
	stop timestamp


## assigned to me this sprint
curl -o "https://jira.appriss.com/rest/agile/1.0/board/895/sprint/5895/issue?jql=assignee%3D%22llapid%40appriss.com%22" \
     -H 'Accept: application/json' \
     -H 'Content-Type: application/json' \
     -H 'Cookie: __cf_bm=ceVPOv1Nsx5raZorzCgoNNHMaY1FTtI_u2pzhqEG8Ls-1666637500-0-ARBHySp5fZtbFGYGg/qgnV0FbQ8UpQs0yG6sa3rn3C+Bc12TGKm2FT98xtErYqx/CFBzJWySQaD5jsFRI9SkH7w=; JSESSIONID=679AAD223F658BB7A4D59F38AD0D97EE; atlassian.xsrf.token=AW9X-RZEC-N3YL-O18B_ae9c3dc1941e5e7d1362c3d15adc9f7c633f44d3_lin; __cf_bm=cKDXKLh3Ml1ca8YQUCPC1dsNchTUmaGUZwpwgWGx9zU-1666637609-0-AeLY4GSTmBKlQKsmNrhqDGuf5uHYga+yzLw7/npdlqH7bFE7tg8PrRRXF74Gky0DNyXLGqA4hngs/P8ihpaTC+Q=' \
     -u 'llapid@appriss.com:didyouknowiloveplants'

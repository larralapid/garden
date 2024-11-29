---
raindrop_id: 489153866
raindrop_last_update: 2023-01-24T22:43:48.921Z
---

# Metadata
Source URL:: https://docs.servicenow.com/bundle/rome-application-development/page/build/applications/concept/c_FixScripts.html


---
# Fix scripts

A fix script is server-side JavaScript code that you run after an application is installed or upgraded.

## Highlights

> [!quote]+ Updated on 2022/12/21 14:01:42
>
> Review the code design to ensure that it can run more than once on the same
>                    system without causing damage. For example, you may write a fix script that adds
>                    a role to a property by default. Design the script so that it can run multiple
>                    times on the same system without overwriting the existing data, even if it is
>                    not necessary to run the script again after the initial installation.

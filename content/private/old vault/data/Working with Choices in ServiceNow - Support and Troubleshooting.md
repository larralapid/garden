---
raindrop_id: 470771266
raindrop_last_update: 2022-12-01T22:10:41.973Z
---

# Metadata
Source URL:: https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB0656146


---
# Working with Choices in ServiceNow - Support and Troubleshooting

Overview This article covers working with choices in ServiceNOW. Choices are handled in a special manner and are treated as a special handler. This is important to know as it is pivotal in understanding

## Highlights

> [!quote]+ Updated on 2022/11/10 13:56:37
>
> Choices are encompassed in a special handler known as a sys_choice_set. When a new choice is added to an existing element, that choice is captured in a sys_choice_set for that respective element.

> [!quote]+ Updated on 2022/11/10 14:50:39
>
> Since choices are captured in sys_choice_set, any changes applied to an instance that has choices always overwrites the existing choice set on the instance where the changes are being applied. Choices from one instance that are applied to another instance do not append or concatenate the changes. This is a common occurrence that is seen when moving choice changes between instances

> [!quote]+ Updated on 2022/11/10 14:52:12
>
> In most cases that seen in support, customers add choices directly to their instances, which means that the last updated on would always be newer than the update set change that was being applied on the target which would not generate any preview errors

> [!quote]+ Updated on 2022/11/10 15:16:47
>
> There is a simple way to remediate sys_choice changes that overwrite existing choices on the target instance where you have applied a change. A sys_update_version record is created each time a modification is made to a choice. The simplest way to resolve an issue is to locate the previous version of the sys_choice record from the update versions table and then revert to the respective version that is needed. This remediation step can also be applied to other serviceNOW artifacts but customers should test before reverting versions in their production environment.

> [!quote]+ Updated on 2022/11/10 17:08:19
>
> The best recommendation for customers is to modify choices only in one instance and then move these changes throughout their environment as needed. Customers should never manually create choices on separate instances. Customers should follow the practice of cloning down from production to all environments to ensure that choices are all synchronized, or the same, across the board. Any addition, or modification, made to a choice should follow the normal development cycle, dev > test > prod, as this mitigates the possibility of unintentionally overwriting choices in an instance when applying an update set or a scoped application.

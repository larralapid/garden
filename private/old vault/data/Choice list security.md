---
raindrop_id: 475526754
raindrop_last_update: 2022-12-01T22:10:41.785Z
---

# Metadata
Source URL:: https://docs.servicenow.com/bundle/tokyo-platform-administration/page/administer/field-administration/concept/c_ChoiceListSecurity.html


---
# Choice list security



## Highlights

> [!quote]+ Updated on 2022/11/21 16:02:12
>
> To be able to create new choices for a particular field, an ACL that grants personalize_choices
>   access for that field is required. For example, to give the hris_admin role the ability to
>   personalize only the Category field for Human Resources KB articles, you need an ACL granting
>   personalize_choices access to the hris_admin role on the Category field of the Knowledge
>   (kb_knowledge) table.

> [!quote]+ Updated on 2022/11/21 16:02:23
>
> There are predefined ACLs granting both types of access to the personalize_choices security
>   role, for all fields on all tables. The personalize_choices security role also has read, write,
>   and delete access to the sys_choices table

> [!quote]+ Updated on 2022/11/21 16:02:27
>
> . However, this additional access is not required when
>   making just the Personalize Choices functionality available on a granular basis.

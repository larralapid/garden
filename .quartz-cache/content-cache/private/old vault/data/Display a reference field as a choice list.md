---
raindrop_id: 483034596
raindrop_last_update: 2023-01-24T22:43:49.060Z
---

# Metadata
Source URL:: https://docs.servicenow.com/bundle/tokyo-platform-administration/page/administer/field-administration/task/t_DisplayTheRefFieldAsAChoiceList.html


---
# Display a reference field as a choice list



## Highlights

> [!quote]+ Updated on 2022/12/08 12:51:03
>
> ref_auto_completer=AJAXReferenceChoice

> [!quote]+ Updated on 2022/12/08 12:51:42
>
> The glide.ui.max_ref_dropdown system property determines whether
>              a reference field is displayed as a choice list or a reference icon. When the number
>              of available choices exceeds the value of this property, a reference icon displays
>              instead of a choice list. The default value of this property is 25. This property
>              affects the entire instance, however you can override this property on an individual
>              field by using the max_ref_dropdown dictionary attribute.
>              Modifying dictionary attributes requires the personalize_dictionary role.
>            The glide.xmlhttp.max_choices system property determines how
>              many choices display on a choice list. This property has a value of 15 by default,
>              however, when the property is not present on the instance, the instance uses a hard
>              coded value of 10.

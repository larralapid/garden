---
raindrop_id: 483034596
raindrop_highlights:
  63922407c8194cd0a3d692cf: 011246b0417dd0e2dc0cf9a86e3b8858
  6392242ec8194c0451d692d3: 01a4629df811ad811e705c7a6aa4e454

---

# Metadata
Source:: https://docs.servicenow.com/bundle/tokyo-platform-administration/page/administer/field-administration/task/t_DisplayTheRefFieldAsAChoiceList.html

Title:: Display a reference field as a choice list
---



## Highlights

> [!quote]+ Updated on Thu Dec 08 2022 12:51:03 GMT-0500
>
> ref_auto_completer=AJAXReferenceChoice

> [!quote]+ Updated on Thu Dec 08 2022 12:51:42 GMT-0500
>
> The glide.ui.max_ref_dropdown system property determines whether
&gt;              a reference field is displayed as a choice list or a reference icon. When the number
&gt;              of available choices exceeds the value of this property, a reference icon displays
&gt;              instead of a choice list. The default value of this property is 25. This property
&gt;              affects the entire instance, however you can override this property on an individual
&gt;              field by using the max_ref_dropdown dictionary attribute.
&gt;              Modifying dictionary attributes requires the personalize_dictionary role.
&gt;            The glide.xmlhttp.max_choices system property determines how
&gt;              many choices display on a choice list. This property has a value of 15 by default,
&gt;              however, when the property is not present on the instance, the instance uses a hard
&gt;              coded value of 10.
## Notes

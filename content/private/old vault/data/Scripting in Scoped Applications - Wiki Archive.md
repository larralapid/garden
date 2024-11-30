---
doc_type: hypothesis-highlights
url: 'https://old.wiki/index.php/Scripting_in_Scoped_Applications'
---

# Scripting in Scoped Applications - Wiki Archive

## Metadata
- Author: [old.wiki]()
- Title: Scripting in Scoped Applications - Wiki Archive
- Reference: https://old.wiki/index.php/Scripting_in_Scoped_Applications
- Category: #article

## Page Notes

Tags: #scoped-apps #script-includes 

## Highlights
- To make a script private and inaccessible from other applications, set the Accessible from field to This application scope only. This allows the script to be called only by code within the the defined application scope and prevents code in other application scopes from accessing the script. By setting scripts to private, application developers can easily modify or refactor scripts in future versions since no other applications depend on it. — [Updated on 2018-11-21 13:11:35](https://hyp.is/4cVi2O24EeiKSxt8GDCvyg/old.wiki/index.php/Scripting_in_Scoped_Applications) — Group: #CloudPires

- Calling a Script from the Same Application Scope No special prefix is required to call private or public script includes that are defined within the same application. For example, if a script include named LightsAPI is defined within the x_acm_power application, the script include can be called as follows: <source lang="javascript"> var lights = new LightsAPI(); lights.turnOn(); </source> — [Updated on 2018-11-21 13:13:18](https://hyp.is/H2_xAu25EeiKTLvkfWIz-g/old.wiki/index.php/Scripting_in_Scoped_Applications) — Group: #CloudPires




---
up: 
tags: 
id: uppoy1ujnz4m0q4ppsk6e1y
title: Python
desc: ""
created: 2024-03-12 02:32:42 AM
updated: 2024-04-09 07:17:29 PM
---
#til _pip_ is run from the command line, not the _[[Python]]_ interpreter. It is a program that _installs_ modules, so you can use them from _Python_ 

```
import sys  
!{sys.executable} -m pip install <package_name>
```

OR
```
import pip; pip.main(['install', 'module_name_here'])
```


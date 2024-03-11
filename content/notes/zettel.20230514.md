---
id: xes4196fh0yi644gpv97gxy
title: "20230514"
desc: ""
updated: 2024-03-11T15:41
created: 1710177569312
tags: daily
---

#til _pip_ is run from the command line, not the _Python_ interpreter. It is a program that _installs_ modules, so you can use them from _Python_ 

import sys  
!{sys.executable} -m pip install <package_name>

OR
import pip; pip.main(['install', 'module_name_here'])


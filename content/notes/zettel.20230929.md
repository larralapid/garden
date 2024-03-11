---
id: igkltelh510tcw15z4aooz1
title: "20230929"
desc: ""
updated: 1710177569474
created: 1710177569474
tags: daily
---
### the day 
ok how am i only now finding out about how nifty uml is?? 
```uml
@startuml
!define RECTANGLE class
!define INTERFACE interface

RECTANGLE User {
  + username: string
  + password: string
  + email: string
  + signUp()
  + logIn()
}

RECTANGLE FinancialRecord {
  + date: date
  + description: string
  + amount: decimal
  + category: string
  + save()
  + update()
  + delete()
}

RECTANGLE Budget {
  + name: string
  + totalIncome: decimal
  + totalExpense: decimal
  + startDate: date
  + endDate: date
  + addIncome()
  + addExpense()
  + calculateTotalIncome()
  + calculateTotalExpense()
  + generateReport()
}

User --> FinancialRecord: Record
User --> Budget: Manage Budget

skinparam class {
BackgroundColor yellow
ArrowColor Yellow
BorderColor OrangeRed
skinparam stereotypeCBackgroundColor OrangeRed
}

@enduml
```

and then it looks like this 
![image](<braindump/notes/Pasted image 20230929233417.png>)


dose.land canada drugs 
- [>] [[planetscale]] >2023-12-16
- [>] [[hashnode?]] >2023-12-16
---
up: 
tags: daily
id: igkltelh510tcw15z4aooz1
title: uml
desc: ""
created: Monday, March 11th 2024, 12:44:11 pm
updated: Monday, March 11th 2024, 6:47:53 pm
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


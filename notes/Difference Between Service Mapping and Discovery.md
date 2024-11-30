---
id: s4r2u0ua4xy6wf9m23b8wxj
title: Difference Between Service Mapping and Discovery
desc: ""
updated: Monday, March 11th 2024, 5:51:47 pm
created: Monday, March 11th 2024, 12:44:11 pm
tags:
  - servicenow
up: "[[ServiceNow]]"
---

## Discovery

- **Horizontal discovery** of infrastructure and applications connected to TCP/IP networks.
- The tool is provided an IP address range and a set of credentials.
- Discovery will scan each IP address, identifying and classifying devices or hosts it receives responses from.
- For each discovered entity, discovery adds or updates Configuration Items (CI) to the CMDB (Configuration Management Database).
- Identifies dependencies between applications.
- Does not relate anything to business services.
- Approach is broad coverage.

## Service Mapping

- **Top-down discovery**.
- Maps a business service.
- One or more entry points are provided.
- Service mapping only discovers infrastructure and apps that support a business service and maps their relationships.
- More precise approach.
- Once a business service has been mapped, service mapping does the following:
    - Routine rediscoveries.
    - Detects changes like the addition or removal of servers in clusters.
    - Updated software.
    - Changed configuration files.
    - Service maps created by service mapping can be used for impact analysis in incident and change management.
    - Service mapping uses discovery.
    - If you want to monitor the availability status of a business service, event management is needed.
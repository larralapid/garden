---
raindrop_id: 480096460
raindrop_last_update: 2023-01-24T22:43:49.238Z
---

# Metadata
Source URL:: https://www.servicenow.com/community/common-service-data-model/csdm-request-catalogue-service-offering-and-catalog-item/ta-p/2309289


---
# CSDM & Request Catalogue - service offering and catalog item association

Disclaimer Any statements, opinions and remarks made by me in this community post are personal. As such, they are not representing any official stand of my employer. The text here is reflecting my personal experience working 8+ years in the ServiceNow ecosystem as partner, customer and now as a Serv...

## Highlights

> [!quote]+ Updated on 2022/12/01 17:10:07
>
> All service offerings are maintained in the Service Offering [service_offering] table and are differentiated by the Service Classification attribute

> [!quote]+ Updated on 2022/12/01 17:10:23
>
> Service Offerings can be related to catalog items using the Available for Subscribers [sc_cat_item_subscribe_mtom] table:
>Related list Available for subscribers on catalog item formRelated list Items orderable by subscribers on service offering form

> [!quote]+ Updated on 2022/12/01 17:10:47
>
> Subscribers (i.e. users) can be related to Service Offerings via Service Subscriptions by ** tables:
>By Group [service_subscribe_sys_user_grp]By Location [service_subscribe_location]By Department [service_subscribe_department]By User [service_subscribe_sys_user]By Company [service_subscribe_company]

> [!quote]+ Updated on 2022/12/06 11:20:27
>
> Service offering <-> catalog item <-> subscription drives visibility to a particular catalog item exposed via request catalogue

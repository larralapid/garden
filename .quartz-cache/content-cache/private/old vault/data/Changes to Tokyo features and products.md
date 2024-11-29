---
raindrop_id: 508099401
raindrop_last_update: 2023-01-31T17:30:14.453Z
---

# Metadata
Source URL:: https://docs.servicenow.com/bundle/tokyo-release-notes/page/release-notes/summary/rn-summary-changes.html


---
# Changes to Tokyo features and products



## Highlights

> [!quote]+ Updated on 2023/01/26 17:52:52
>
> Query capabilities in
>                Multisource Report Builder
>              
>            You can now create a query in Multisource Report Builder that does the
>                  following:
>                  Compares attribute values across more than two discovery sources to find
>                    discrepancies and to manage the trustworthiness of various data sources.
>                  Compares multiple attributes across the specified data sources, including the
>                      CMDB.
>                ServiceWatch SuiteCreate a single query to find, for
>                example: 
>                  All Linux Servers where the CPU count and serial number are
>                    different for records reported by the ServiceNow platform
>                    and System Center Configuration Manager (SCCM).
>                  All Windows Servers where CPU count is reported differently
>                    across the ServiceNow platform, ServiceWatch Suite, SCCM, and Tivoli data sources.
>                After creating, saving, and running a query, you can now create a
>                schedule for CMDB 360 queries and then leverage Reporting to generate reports for the underlying CMDB 360 data store.Also, you can now use the new
>                cmdb_ms_user, cmdb_ms_editor, and cmdb_ms_admin Multisource CMDB user
>                  roles to control access to CMDB 360 functionality.

> [!quote]+ Updated on 2023/01/26 17:53:13
>
> UI access to Multisource CMDB
>                properties
>            Use the MultiSource Properties page to view and modify system properties that drive
>                CMDB 360 behavior without adding the property to the system
>              first.

> [!quote]+ Updated on 2023/01/26 17:54:55
>
> Delete stale records in related
>                tables using the CMDB Data Manager
>            Use the Delete CMDB Related Entry policy type
>              in CMDB Data Manager to delete orphan, stale, or
>              otherwise irrelevant records in non-CMDB related
>              tables. The non-CMDB related tables in the
>              Related Entry [cmdb_related_entry] table have references to CMDB tables. A CI in a related table can, for
>              example, become orphan if the referenced CI in the CMDB is deleted. Remove those CIs, which are no
>              longer needed to maintain the integrity of the system.

> [!quote]+ Updated on 2023/01/26 18:00:15
>
> CMDB Data Manager requirement
>                for setting up the CSDM life cycle standards
>            
>              The CMDB Data Manager requirement that the ServiceNow®
>                Common Service Data Model (CSDM) life cycle standards are set
>                up, applies now at the CMDB Data Manager policy
>                level, and applies to most but not all policy types.
>                  For the Attestation policy type, for example, this requirement does not
>                  apply.
>              If you attempt to use a policy type that requires the CSDM
>                life cycle standards and that requirement isn't met, an error message appears and
>                the operation fails.
>              For information about the life cycle standard requirement, see Configure the environment for
>                  CMDB Data Manager.
>            
>          
>          
>            
>              CMDB Data Foundations dashboard
>                (2.0) store app
>              
>            
>              The CSDM and the CMDB Data Foundations dashboards Version 2.0 contains 11 new
>                indicators and new drill-down Performance Analytics (PA) widgets in almost all
>                indicators on the CMDB Data Foundations dashboard.
>              The CMDB indicators are now grouped by function and purpose under 4 tabs such as
>                the Customization and the ITSM Processes tab. Use the CMDB Data Foundations
>                Dashboard for insights into key foundational indicators of your CMDB. Each metric
>                also has a linked KB article that provides further guidance to ensure that the CMDB
>                is properly configured for optimal usage and to mitigate any potential risks.

> [!quote]+ Updated on 2023/01/26 18:00:21
>
> IntegrationHub ETL
>                (3.0.1)
>            IntegrationHub ETL 3.0.1 is enhanced as follows:
>                
>                  When generating entities for a nested payload, new entities are created only
>                    for the top-level object and any arrays nested within the data. Entities are no
>                    longer generated for data within a flat object which is instead associated to
>                    the nearest collection or to the top-level object through dot walking.
>                  In the next example, you can map from ‘name’ and then from ‘general’ without
>                    copying data because both are associated with the same source
>                    entity:

> [!quote]+ Updated on 2023/01/26 18:00:29
>
> When creating a conditional class, you can now create a condition that is based
>                  on a data branch that is not within the top-level object.
>                When IntegrationHub ETL isn't detecting any incoming data from the data source
>                  for a Service Graph connector, the integration is available but in read-only mode.
>                  In read-only mode you can examine the details of the integration even though it
>                  isn't populated with actual data. However, you can't make any updates. Read-only
>                  mode is useful for studying an existing connection for the purpose of creating a
>                  new connection that is similar to the read-only connection. Using read-only mode
>                  can also assist in troubleshooting issues with the connection.
>                When IntegrationHub ETL detects validation errors in an ETL transform map, it no
>                  longer automatically deletes the invalid mappings. Instead, you are prompted to
>                  either confirm the deletion or keep the invalid mappings. You can use the
>                    sn_int_studio.validation.enabled system property to enable
>                  or disable the validation process.
>                You can now modify the import data source of an ETL transform map. However, be
>                  cautious as this change can result in substantial changes to the data integration.
>                  Aligning to the import set table of the new data source might require the removal
>                  of columns and associated transforms, or the addition of new columns.
>                You can now select one of the Robust import set
>                    transformer properties as an
>                  option when adding an attribute in a mapping.
>                When mapping a lookup rule (such as the 'Serial Number Lookup 1' rule), you can
>                  add lookup filters which are attribute or plugin conditions that must be met for
>                  data to be mapped to the specified classes.

> [!quote]+ Updated on 2023/01/26 18:00:39
>
> JavaScript engine on the
>                platform
>            
>              Updated the JavaScript engine to support the ECMAScript 2021 standard with a new
>                ECMAScript 2021 (ES12) JavaScript mode that can be enabled for new or existing
>                scoped applications. Review all server-side scripts and perform regression testing
>                for any scoped applications that you update to use ECMAScript 2021 (ES12).
>                Server-side scripts include access controls, scheduled jobs, script includes, and
>                more. For more information about server-side scripts, see Server-side
>                  scripting.
>            
>          
>          
>            Support for function fields in
>                database views
>            Database views now support function fields. If a table in the database view contains
>              a function field, you can now see the function field's data in lists and reports based
>              on the database view.

> [!quote]+ Updated on 2023/01/26 18:01:30
>
> Flow diagramming view
>                improvements
>            The Flow Diagramming view supports more triggers and flow logic.
>          
>          
>            Flow execution detail retention
>                improvements
>            Changed the tables used to store and retain context records, execution details,
>              input values, output values, process plans, and snapshots.

> [!quote]+ Updated on 2023/01/26 18:01:57
>
> New workflow to renew
>                contracts
>              
>            
>              The new Contract renewal workflow is a streamlined and managed process that enables
>                you to renew contracts that are nearing their expiration date or have already
>                expired. You can create a contract record referencing the original contract and
>                manage related entities.
>            
>          
>          
>            Ability to look up hardware
>                model by model number
>            You can now look up the model number of hardware models through the
>                MakeAndModelJS script. This capability is turned on by default
>              in the Tokyo release. The
>                glide.cmdb.makeandmodel.use_model_number_lookup property is set
>              to true by default in the Tokyo version.

> [!info]+ Updated on 2023/01/26 18:02:07
>
> ew Service Operations Workspace experience
>            The new Service Operations Workspace provides a more efficient,
>              modernized way for you to work.Note: In the Tokyo release,
>                  Service Operations Workspace is supported only when operated
>                together with the Health Log Analytics application June 2022 version.
>                  Operator Workspace is still supported in the Tokyo release.

> [!quote]+ Updated on 2023/01/26 18:02:36
>
> Enhanced discovery patterns
>            
>              
>                GCP Global or Regional
>                    resources and DB services
>                Extended Docker Image for Kubernetes and Docker
>                    Virtualization
>                MSSQL components of the
>                    MSSQL server
>                HPE BladeSystem
>                    Enclosure
>                Couchbase
>                    Database
>                Kubernetes on GCP
>              
>            
>          
>          
>            
>            Agent Client Collector for
>                Visibility
>            Agent Client Collector for Visibility (ACC-V) now includes the
>              following support:
>                SAM Basic metering supports MAC.
>                ACC-V supports data collection for Intel vPro Platform.
>                Retrieves edition information for Adobe Acrobat and MS SQL Server with SAM installed.
>                Detects portable applications, such as Firefox, VLC,
>                  Notepad++ etc, for Windows.
>                Uses push-based Discovery to discover DNS names.
>                Windows 11 Professional and Enterprise Editions, Windows 2022, macOS Monterey (x86), CentOS Stream 8 and
>                  9, and RHEL 9.
>              
>          
>          
>            Certificate Inventory and
>                Management
>            Certificate Inventory and Management now supports Entrust CA Gateway.
>          
>          
>            
>            Analytics and Reporting for
>                Cloud Resources
>            
>              
>                Performance Analytics Content Pack for Cloud Resources now supports GCP in the cloud analytics tables. Use the Cloud Operations Workspace application to view and drill down into
>                  details of Google Cloud resources.
>                The default timeout for the scheduled job that fetches and populates the CI data
>                  in the analytics table has increased from 120 minutes to 360 minutes. You can use
>                    the sn_disco_cd.scheduled_job_time_out_in_mins property to
>                  change the default job timeout value.
>              
>            
>          
>          
>            
>            SNMP support for
>                Discovery
>            The default behavior for SNMP discovery is ALL for consistent behavior with Quick
>              Discovery and Scheduled Discovery.

> [!quote]+ Updated on 2023/01/27 13:25:11
>
> Simplified Next Experience
>                Setup
>            Your administrators can now turn on the Next Experience user interface with
>              one click.

> [!quote]+ Updated on 2023/01/27 13:25:17
>
> Personalized Start Page
>            Your users have a new user preference that enables them to specify the page that
>              appears when they log in to the Next Experience user interface.

> [!quote]+ Updated on 2023/01/27 13:25:28
>
> Admin menu
>            Your administrators can use the newly added Admin menu within the Unified Navigation
>              to provide them access to the default landing page. If they have installed the Admin
>              Center store app on their instance, they can also access Admin Center from the Admin
>              menu.

> [!quote]+ Updated on 2023/01/27 13:27:51
>
> Create a process
>                definition
>            
>              
>                In the new Automation tab of Activity properties, a link takes you to the
>                  activity's source flow in Flow Designer.
>                In Activity properties, the outputs of an activity's flows and actions are now
>                  displayed.

> [!quote]+ Updated on 2023/01/27 13:28:37
>
> Data Loss Prevention
>            Identify, respond to, and protect your data loss channels with the Data Loss Prevention (DLP) application. You can manage sensitive
>              information for your customers, such as the financial and proprietary data, health
>              records, or social security numbers. With this application, you can also automate the
>              remediation workflows.

> [!quote]+ Updated on 2023/01/27 13:29:05
>
> Requested for value in requested
>                item
>            In the Requested Item form, view the requester assigned to a requested item instead
>              of the requester assigned to the parent request.

> [!quote]+ Updated on 2023/01/27 13:33:57
>
> Sequence of states for requested item
>            The state for a requested item at the beginning of the request approval process is
>              now Request Approved.

> [!quote]+ Updated on 2023/01/27 13:37:45
>
> List view for a catalog item in configurable workspace
>            Creation of a catalog item from the list view in a configurable workspace is no
>              longer supported.
>          
>          
>            Delivery information for a request
>            The Buy Item (REST) and CartJS - orderNow (scripted) APIs no longer set the delivery
>              information for a user for a request generated when the
>                delivery_address parameter has an empty string value.

> [!quote]+ Updated on 2023/01/27 13:37:55
>
> New  experience
>            The new  provides a
>              more efficient, modernized way for you to work. For information about how to upgrade,
>              see
>              .
>              Note that  is
>              still supported in this release.

> [!quote]+ Updated on 2023/01/27 13:38:30
>
> Experts on-call recommendations
>                for an incident
>            Experts on-call recommendations are now based on all configuration items and
>              services associated with the incident.

> [!danger]+ Updated on 2023/01/27 13:40:20
>
> Note: On upgrade, customers identified as having a heavy data load, the system
>                initiates a long-running background job, which could take a long duration. For more
>                information, see KB1123644.

> [!quote]+ Updated on 2023/01/27 13:40:48
>
> Convert services in
>                bulk
>            System administrators can bulk convert services from the cmdb_ci_service table to
>              dedicated child tables: cmdb_ci_service_business and cmdb_ci_service_technical.
>                When a service record is converted, the record and all its relationships remain
>                  intact.
>                Service offerings cannot be converted. Attempts to migrate result in a warning
>                  message.

> [!quote]+ Updated on 2023/01/27 13:40:54
>
> View availability
>                results
>            Service owners can create and map service commitments and associate them to
>              application services as well as to service offerings.
>                Availability capability now resides in an availability module as part of the
>                  core capability. This capability enables you to report on availability for
>                  application services and extends that reporting ability to other configuration
>                  items (CIs) as well.
>                The enhanced reporting mechanism reduces an unplanned outage duration when it
>                  overlaps with a planned outage. If an unplanned outage in full or in part overlaps
>                  with a planned outage, then the unplanned outage time that overlaps will not be
>                  included in the total outage time.

> [!quote]+ Updated on 2023/01/27 13:41:44
>
> SaaS License Management store
>                application name
>            In the ServiceNow Store, the name of the ServiceNow®
>              SaaS License Management application has changed from Software Asset Management - SaaS License Management Integrations to Software Asset Management - SaaS License Management.

> [!quote]+ Updated on 2023/01/27 13:42:31
>
> One-to-many mapping for roles to
>                applications
>            License Management can now map a role to more than one application. You can view all
>              the applications to which the role is mapped. For example, the itil role can have the
>              Fulfiller role type for Incident Management, Problem Management, and
>                Change Management. With this update, you can see all the applications that
>              the itil role is mapped to.

> [!quote]+ Updated on 2023/01/27 13:43:01
>
> Customize tabs
>            Customize your tabs to render vertically. You can create Viewport extension tabs in
>              a set next to the empty container and repeater tabs, and then apply the conditions to
>              hide the individual tabs in a set.
>          
>          
>            Create pages
>            Reduce the time to create pages by using the new templates that use presets and
>              controllers. Former page templates are made available as legacy templates.
>          
>          
>            Table Builder
>                access
>            When the Table Builder plugin is installed, Table Builder is now accessible from UI Builder when
>              adding a form component to a page. When the form component is being configured, users
>              can select Edit form views to launch the
>                Forms tab in Table Builder.
>          
>          
>            Edit JSON
>            The JSON editor (released in San Diego) has been enhanced. Use the JSON editor
>              anywhere in UI Builder where JSON exists. You can edit nested
>              JSON objects and save empty property values in the JSON editor.

> [!info]+ Updated on 2023/01/27 13:43:25
>
> Assignment group and Assigned to field's restriction removed for RITM transfer
>            ITIL users can transfer RITM requests associated as a primary ticket a UR without
>              any Assignment group or Assigned to
>              field restrictions.

> [!quote]+ Updated on 2023/01/27 13:43:58
>
> Show or hide system and
>                user-generated emails in the activity stream filter
>            Configure the activity stream to hide auto-generated and correspondence emails. End
>              users can choose to filter out auto-generated or correspondence emails.

> [!quote]+ Updated on 2023/01/27 13:44:17
>
> Form personalization
>            Agents can personalize (show or hide) the fields that appear on the form.
>          
>          
>            Ability to access condition
>                builder in reference lists
>            Filter records even if the column you want to use as a filter is not currently on
>              screen.
>          
>          
>            Use Declarative Actions in
>                Database Views
>            Configure the declarative actions to display for database views. Export is included
>              by default.
>          
>          
>            Restrict ribbon configurations
>                to the specific Workspace experience
>            Restrict a ribbon configuration to a specific experience and disallow the ribbon
>              configuration from appearing in the legacy workspace by selecting
>                Experience restricted on the UX Ribbon Settings form.

---
raindrop_id: 507160563
raindrop_last_update: 2023-01-31T17:30:14.629Z
---

# Metadata
Source URL:: https://docs.servicenow.com/bundle/tokyo-release-notes/page/release-notes/summary/rn-summary-new-features.html


---
# New features and products in Tokyo



## Highlights

> [!quote]+ Updated on 2023/01/24 18:33:04
>
> FlowAPI - Scoped,
>                    Global
>                getErrorMessage()

> [!quote]+ Updated on 2023/01/24 18:36:43
>
> Adoption Blueprints
>            Identify the Adoption Blueprints that are used to measure your organizational needs
>              for achieving business growth. Each blueprint focuses on a strategic priority. It
>              suggests applications and plugins best suited for your business goal.

> [!quote]+ Updated on 2023/01/24 18:36:48
>
> Recommended and optional
>                applications
>            The list of recommended and optional applications are in an ideal order based on
>              your current scenario for a selected adoption blueprint. View the progress of the
>              number of recommended applications installed on the adoption blueprint cards.

> [!quote]+ Updated on 2023/01/24 18:37:08
>
> Explore the different maturity levels of the recommended and optional applications
>              on the Adoption Blueprints details page. The maturity levels are categorized as Build
>              a foundation, Enhance the experience, Optimize the functionality, and Add advanced
>              features.

> [!quote]+ Updated on 2023/01/26 16:55:53
>
> Architectural
>                Artifacts
>            
>              As an Enterprise Architect, use the Architectural Artifacts module to perform the
>                following tasks:
>                  Store and keep track of versions of the architectural documents.
>                  Review and approve architectural artifacts that are submitted by other
>                    business stake holders in your company, for example Application Owners.
>                  Associate architectural documents to the existing elements in the ServiceNow® platform, such as business capabilities and business
>                    applications.

> [!quote]+ Updated on 2023/01/26 16:56:06
>
> For more information, see Architectural Artifacts in
>                  Application Portfolio Management.

> [!quote]+ Updated on 2023/01/26 17:04:04
>
> Take advantage of a redesigned assessment-taking experience on Service Portal and the Now Mobile app. Your users can use a
>                modern, competitive, and inclusive UI to complete the assessments assigned to
>                them.
>              When you upgrade Assessments and Surveys to Tokyo, the new assessment feature, enabled by default, provides users with a refreshed
>                experience. They can use the new My Assessments and Surveys widget to land on the
>                assessments pages from Service Portal. The widget styles reflect the
>                theme that has been selected for the relevant Service Portal. The
>                assessment pages show a newly added progress bar (with the completion status in
>                percentage) and pagination text.

> [!quote]+ Updated on 2023/01/26 17:04:54
>
> Link Benchmarks
>              Virtual Agent KPIs to Performance Analytics KPIs so that you can analyze
>              KPI breakdowns and drill down into the data.

> [!quote]+ Updated on 2023/01/26 17:05:01
>
> As a member of the leadership team or a process owner, use the Success Dashboard
>              KPIs to gain insights into the metrics. For example, you can see how often calls were
>              deflected or resolved without agent intervention.

> [!quote]+ Updated on 2023/01/26 17:05:05
>
> Use the Strategic Portfolio Management KPIs to gain insights into the
>              industry averages of your peers. You can compare the relative performance of your
>              portfolio with global benchmarks that are based on the industry, size, or region.

> [!quote]+ Updated on 2023/01/26 17:06:25
>
> Change Models - Declare
>                Execution State
>            Declare the execution state of a change when using models.

> [!quote]+ Updated on 2023/01/26 17:06:30
>
> Quick start tests for Cloud
>                Provisioning and Governance
>            
>              After upgrades and deployments of new applications or integrations, run quick start
>                tests to verify that Cloud Provisioning and Governance works. If you customized
>                  Cloud Provisioning and Governance, copy the quick start tests and configure
>                them for your customizations.

> [!quote]+ Updated on 2023/01/26 17:07:32
>
> ntelligent Search for CMDB in
>                CMDB Workspace
>              
>            
>              Use Intelligent Search for the CMDB in the
>                  CMDB Workspace, instead of CMDB Search, to construct search strings using
>                everyday natural query language (NLQ). Intelligent
>                Search queries can span multiple CMDB classes
>                and involve many CIs that are connected by different relationships. Create custom
>                synonyms and Implicit CMDB Relationships to
>                fine-tune the search to your environment.
>              Intelligent Search parses the NLQ query as you type
>                and provides a dynamic list of relevant suggestions that match single words or part
>                phrases in your query. Then, Intelligent Search resolves any ambiguities in table
>                names or relationship types and converts your natural language search string into a
>                valid CMDB query that you can run. Complex
>                search strings open fully constructed on a canvas of CMDB Query Builder where you can continue and
>                refine or run the query.
>              Intelligent Search for CMDB functionality is
>                integrated with CMDB Query Builder, letting you
>                find CIs and their relationships using basic NLQ
>                functions. The CMDB query is constructed
>                dynamically as you type into a search field.

> [!quote]+ Updated on 2023/01/26 17:07:39
>
> CI attestation in CMDB
>                Workspace
>            
>              Verify the existence of actual IT infrastructure and applications that you own,
>                systematically and in bulk. As CIs are continuously ingested into the CMDB from various data sources, ensure the
>                integrity of the CMDB by removing any stale CIs
>                that are associated with IT infrastructure or applications that no longer exist.
>              Use the CMDB Data Manager to create an
>                Attestation policy, specifying CIs that need to be attested and the attestation
>                frequency. Assign attestation tasks to users that are familiar with or that manage
>                the CIs, and who can attest or reject the IT infrastructure or applications that
>                those CIs represent. Rejected CIs that are no longer needed can then be retired,
>                archived, or deleted.
>              Users can see their assigned attestation tasks in the Attestation view when they
>                log in to the CMDB Workspace, and review and
>                process those attestation tasks.

> [!quote]+ Updated on 2023/01/26 17:07:46
>
> Cascade-retire dependent
>                CIs
>            
>              When dependent CIs management is enabled, the system manages dependent CIs whenever
>                CIs are deleted or archived, and now, also when CIs are retired. When a CI is
>                retired, the system checks all the relationship records for that CI. For any
>                relationship that is with a dependent CI, the system adds the dependent CI to the
>                [cmdb_dependent_ci_ledger] table and sets the CI as ready to retire.
>              The system then generates a CMDB Data Manager
>                retire policy for the set of dependent CIs and leverages the Data Manager to manage
>                the review the retirement process.

> [!quote]+ Updated on 2023/01/26 17:08:05
>
> Cleanup existing orphan
>                dependent CIs
>            
>              Apply processes of dependent CIs management to orphan dependent CIs from previous
>                delete or archive operations. When enabling dependent CIs management,
>                cascade-cleanup operations apply only from when the feature is enabled. You can
>                improve the overall performance and data integrity of the CMDB by applying the same cascade-cleanup
>                operations to orphan dependent CIs that existed in the CMDB before the feature was enabled.
>              Enable dependent CIs management to ensure future cascade-cleanup of any orphan
>                dependent CIs and also activate the Cleanup Orphan CIs scheduled job to perform a
>                one-time cascade-cleanup of dependent CIs that were previously orphaned.

> [!quote]+ Updated on 2023/01/26 17:08:30
>
> Delete records
>                safely
>            Bulk delete data safely without using scripts. You can now preview a delete job to
>              view affected records before you execute or schedule the job. You can also roll back a
>              delete job to restore deleted records.

> [!quote]+ Updated on 2023/01/26 17:08:39
>
> Update records
>                safely
>            Bulk update data safely without using scripts. You can now preview an update job to
>              view affected records before you execute or schedule the job. You can also roll back
>              an update job to undo an update.
>          
>          
>            Limiting ability to edit system
>                log tables
>            Configure system log table protection rules to limit the scope of modification and
>              deletion of application log records. The rules enable you to determine the logging of
>              changes or attempts to make changes in these tables.
>          
>          
>            Scoped caches for faster
>                access
>            Use scoped caches to store custom data in memory for faster access, and define when
>              it becomes invalidated.

> [!quote]+ Updated on 2023/01/26 17:09:10
>
> Enhanced address data model for
>                accounts
>            Define addresses once and reuse them within an account hierarchy, or across account
>              hierarchies. The enhanced address data model makes it possible to link a location with
>              multiple accounts without creating multiple location records.

> [!quote]+ Updated on 2023/01/26 17:09:31
>
> Homepage deprecation help
>                tool
>            Homepages are being phased out. Use the Homepage deprecation help tool to convert
>              homepages to dashboards, retire homepages, and restore retired homepages as
>              dashboards.
>          
>          
>            Platform Analytics Workspace
>            Create and view Next Experience dashboards in the new Platform Analytics
>              Workspace, available in the ServiceNow Store. The Dashboard in-line editor
>              included in this workspace greatly simplifies Next Experience dashboard
>              creation. For more information, see Platform Analytics Workspace release notes.

> [!quote]+ Updated on 2023/01/26 17:09:54
>
> User roles and
>                permissions
>            Control access to features and capabilities by assigning the decision_rule_author
>              and decision_rule_editor roles in Decision Builder.

> [!quote]+ Updated on 2023/01/26 17:10:07
>
> Jira integration with
>                DevOps
>            Integrate the Jira planning tool with DevOps.

> [!quote]+ Updated on 2023/01/26 17:12:49
>
> Processing Documents
>            
>              Upload single or multi-page documents in JPEG, PNG, or PDF formats to start
>                extracting data and text.
>              Create definitions and keys to tell the system exactly what to parse and pull from
>                the documents.
>              Receive suggestions for data extracted from your documents.
>              View, analyze, and measure your extraction usage and effectiveness using the Document Intelligence dashboard.

> [!quote]+ Updated on 2023/01/26 17:14:03
>
> Multi-Provider documents
>                framework
>            Integrate with third-party applications for file storage and collaboration.
>          
>          
>            Documents widget
>            Upload and link documents to other records on the platform using the Documents
>              widget in Service Portal.
>          
>          
>            Activity stream for
>                documents
>            Configure and track document actions like uploading and deleting in the activity
>              stream of parent records linked to the
>              document.
>          
>          
>            Document Management in Configurable Workspace
>            Upload and link documents to other records on the platform. Access documents,
>              metadata, and document versions.

> [!quote]+ Updated on 2023/01/26 17:15:31
>
> Create disposal orders for your
>                assets
>            Create disposal orders for your assets that have reached their end of life cycle or
>              are no longer functional. The disposal order workflow guides you through the entire
>              order process for asset disposal.

> [!quote]+ Updated on 2023/01/26 17:15:53
>
> Create transfer orders for your
>                assets
>            Create a transfer order so that you can transfer assets from one location to the
>              other. A transfer order can contain one or more transfer order lines. A transfer order
>              line can involve one non-consumable asset or multiple quantities of a consumable
>              asset.
>          
>          
>            
>            Create a request for enterprise
>                catalog items from the Service Catalog application
>            Use an enterprise asset request flow to request, source, and deploy catalog items
>              from the Service Catalog application. You can also associate the catalog item with the
>              Standard Enterprise Asset Request flow to trigger the flow.
>          
>          
>            
>            Request an asset
>                refresh
>            Use the Enterprise Asset Refresh flow so that you can track the assets that are
>              nearing the end of their life cycles and replace them with new assets.
>          
>          
>            
>            Audit your asset
>                inventory
>            Audit your asset inventory to learn where your assets are and what their current
>              status is.

> [!quote]+ Updated on 2023/01/26 17:16:16
>
> Manage expiring contracts for
>                leased enterprise assets
>            Get notified and take action on leased enterprise assets that are nearing the end of
>              their contracts. You can choose to return your leased asset, buy out your leased
>              asset, or extend your lease contract.
>          
>          
>            
>            Manage the Return Merchandise
>                Authorization (RMA) process for your defective enterprise assets
>            Use Return Merchandise Authorization (RMA) orders to track and manage the process of
>              repairing or replacing enterprise assets that are defective. You can submit RMA orders
>              for serialized enterprise assets that either arrived defective or became defective
>              within the specified warranty period. Based on your service or warranty contract with
>              the asset vendor, you can choose to repair the defective enterprise asset on-site or
>              ship the defective enterprise asset to the asset vendor for off-site repair or
>              replacement.
>          
>          
>            
>            Manage the enterprise asset
>                recall process
>            Use recall orders to manage the process of identifying and remediating all
>              enterprise assets that have been recalled by the asset manufacturer or regulator.
>              Supported remediation actions include the replacement, repair, or retirement of your
>              recalled enterprise assets. You can also choose to provide your users with additional
>              instructions on how to operate your recalled enterprise assets.
>          
>          
>            
>            Extend Configuration Management
>                Database (CMDB) classes for your enterprise assets and models
>            Use the Expanded Model and Asset Classes application to add enterprise model and
>              asset classes that extend out-of-the-box product model and asset classes within the
>                CMDB class hierarchy. You can also use this
>              application to create model categories that associate these enterprise model and asset
>              classes with CMDB configuration item (CI)
>              classes. Based on these classes and model categories, the Enterprise Asset Management application creates asset and model records that
>              you can use to track and manage your enterprise assets. Discovery tools, such as the
>                ServiceNow®
>              Discovery application, can also use these classes and model categories
>              to create asset and model records for discovered Cis.

> [!quote]+ Updated on 2023/01/26 17:21:38
>
> Perform archive operations with
>                Zip steps
>            Perform archive operations to manage the attachments in a record by using Zip steps.
>              Reduce the file size of attachments and also unzip specific attachments in a zipped
>              file. View the attachments in a zipped file before unzipping.
>          
>          
>          
>          
>            Limit Flow Designer access with
>                read only roles
>            Allow Flow Designer users to view
>                    configuration details but prevent them from creating or changing content. Grant
>                    users a general read-only role when you want to limit access to all Flow Designer content. Grant users a specific read-only role when
>                    you only want to limit access to specific features such as flows, actions, or
>                    execution details.

> [!quote]+ Updated on 2023/01/26 17:22:10
>
> View hardware products and
>                models on the Content lookup portal page
>            Find the details of all the hardware products and model numbers within the content
>              library via an intuitive user interface. The Content lookup portal has been expanded
>              to include the hardware, product, and model content libraries.
>          
>          
>            Renew hardware contracts through
>                Contract renewal workflow
>            
>              Notify contract owners of an upcoming contract expiration and enable them to renew
>                the contract record by using the Contract Renewal workflow. This workflow maintains
>                the contract history during updating assets, terms, and conditions for a new
>                contract.
>            
>          
>          
>            Identify and track your asset
>                locations automatically with RFID
>            View the RFID Tag information like zone group, zone, and locations mapped with
>              assets by integrating your Zebra technology RFID system with your ServiceNow instance.
>          
>          
>            Source hardware requests in the
>                Asset operations view
>            See local stock, create transfer orders, and place purchase orders by using the
>              Sourcing task in the Asset operations view.
>          
>          
>            Visualize and work on contract
>                details
>            Visualize, renew, and manage details of contracts such as the contract number,
>              contract start and end dates, and terms and conditions statements by using the
>              Contract management view.

> [!quote]+ Updated on 2023/01/26 17:22:30
>
> View Health Log Analytics system
>                health alerts on the Event Management service map
>            View system health alerts for Health Log Analytics on the ServiceNow®
>              Event Management application service map. When the Health Log Analytics self-health checks that monitor the health of its
>              components discover a system health issue, a notification triggers an alert. The
>              service map helps you to better understand the source of the alert. It enables you to
>              visualize the impact of the issue on the service through a visual representation of
>              the data on the configuration items (CIs) that comprise the Health Log Analytics application and the relationships between these
>              CIs.
>          
>          
>            Use enhanced log data streaming capabilities
>            Work with improved Health Log Analytics log data streaming
>              capabilities that provide clear, actionable recommendations for resolving log
>              streaming issues.

> [!quote]+ Updated on 2023/01/26 17:22:58
>
> Application service readiness
>                dashboard in configurable workspace
>            Ensure that you are ready to discover and map application services based on machine
>              learning (ML) by reviewing information on the Application service readiness dashboard.
>                Service Mapping uses data processed by Predictive Intelligence to generate suggestions for traffic-based connections.
>          
>          
>            
>            Support for IPv6
>              devices
>            
>              IPv6 supports the following for Discovery via Discovery schedules and Quick Discovery.
>              
>                
>                  Systems:
>                      Linux and Windows discovery patterns for
>                        horizontal discovery
>                      Application Dependency Mapping (ADM)
>                      Installed software
>                      Application patterns
>                    
>                  vCenter
>                  SNMP devices
>                  Certificate Inventory and Management
>                
>              
>              IPv6 also supports Debug Mode in Pattern Designer.
>              IPv6 does not currently support the following:
>                  MID Server auto-selection
>                  Service Mapping
>                  Cloud Discovery or Cloud Provisioning and Governance
>                
>              
>            
>          
>          
>            
>            Cloud Operations
>                Workspace
>            
>              Use the Cloud Operations Workspace to slice and drill down into all
>                your cloud resources by various dimensions such as region, accounts, and CI class
>                types, as well as experiencing the new dark theme mode in the Next Experience
>                UI. You can  manage your cloud viewing preferences, set up cloud discovery
>                schedules, and examine the trend of cloud resource growth.
>            
>          
>          
>            Application CI life
>                cycles
>            Control if application CIs should be updated based on running process status by
>              setting the Discovery property
>                glide.discovery.adm.update.applications to true. For existing
>              customers upgrading to Tokyo, manually set this property to true.
>          
>          
>            
>            SCP and SFTP file transfer
>                method choice
>            Select the method to use for Probes and patterns to transfer
>              files, SCP and SFTP,by setting the MID Server property
>                mid.discovery.file_transfer_protocol. The default value is
>              SCP.
>          
>          
>            
>            Visibility Content application
>            Use the updated version of the patterns that were part of the family releases prior
>              to the Tokyo release by installing the Visibility Content (sn_pattern_design) application. You can install the latest available version of
>              this application from the ServiceNow Store or install it as a plugin on your
>                ServiceNow instance.

> [!quote]+ Updated on 2023/01/26 17:23:14
>
> SCIM customization
>            Use SCIM custom attributes to support custom fields on the sys_user and
>              sys_user_group tables through dynamic extension schema generation and override default
>              SCIM mappings.
>          
>          
>            SCIM Client
>            Use the SCIM Client to provision and update the identity resources through CRUD
>              operations exposed by the SCIM endpoint on an external system.

> [!quote]+ Updated on 2023/01/26 17:23:40
>
> Use an updated load-by-script
>                experience for custom data sources
>            Access the data source and import logs directly in the data loader script.
>          
>          
>            Override a connection alias when
>                you schedule an import
>            For data sources that use a connection alias, use the default parent alias or
>              override it with a child alias. Connection override is available on the Scheduled Data
>              Import form, so you can select an alias without needing to write a script.
>          
>          
>            Specify a column when mapping
>                data to a reference field
>            
>              For reference fields, you can select a particular column to map data to in the
>                target table.
>            
>          
>          
>            View detailed import statistics
>                all in one place
>            View information about the import set run, processed records, individual import set
>              rows, errors, and log messages all through the import set view.
>          
>          
>            ETL definition
>                enhancements
>            
>              
>                Use an on before script to ignore records, log messages, or
>                  run custom logic before inserting or updating data.
>                Use an on after script to log messages or run custom logic
>                  after inserting or updating data.
>                Specify what to do if incoming data has a field with an empty value. Copy the
>                  empty value or ignore it and keep the existing value.

> [!quote]+ Updated on 2023/01/26 17:24:06
>
> REST step
>                enhancements
>            
>              
>                Dynamically set the base URL for a connection when using a connection
>                  alias.
>                Configure the file name and content type for each part of a multipart request.
>                  Use the file name and content type from an attachment or enter your own.
>                Send REST requests that contain duplicate request headers. If you create a REST
>                  request with duplicate headers, the headers are sent in the same order that you
>                  define them.
>              
>            
>          
>          
>            Configure logging for the
>                PowerShell step
>            Add log messages to your PowerShell scripts. Use log levels for improved logging and
>              debugging.
>          
>          
>            Integration Hub - Import
>                enhancements
>            
>              
>                
>                  Override the connection for an integration. For Data Stream actions that use a
>                    connection alias, you can use the default connection alias, or replace it with a
>                    child alias.
>                
>                Use Data Stream actions with dynamic outputs as data sources.
>                For choice and reference fields in the target table, specify the column to map
>                  data to in the target table. Use the default display column or select your
>                  own.
>              
>            
>          
>          
>            Pre-populate custom fields in a
>                configuration template
>            Pre-populate the custom fields in a connection configuration template by using a
>              pre-edited script. Map the custom fields to records in tables that are outside the
>              connection. Use this capability to view the current values associated to the custom
>              fields while editing a connection.
>          
>          
>            Test a credential for the
>                PowerShell step
>            Test a configured credential directly from the PowerShell step. Confirm that the
>              credential works before you use it.
>          
>          
>            Use a MID Cluster in Integration
>                Hub steps and connections
>            Specify a MID Cluster in integration steps or when configuring a connection. View
>              the MID Server that the step ran on in the Flow execution details.
>          
>          
>            Run a flow with a personal OAuth
>                token
>            Enable a personal (non-admin) user to create an OAuth token and use that token to
>              run an action or flow.

> [!quote]+ Updated on 2023/01/26 17:32:14
>
> Ability to set up 301 and 404
>                redirects for retired articles
>            Indicate a replacement article while retiring a knowledge article to which users
>              will automatically be redirected with a 301 redirect response. If a replacement
>              article is not available, the page displays the message Knowledge record
>                not found as a 404 response.
>          
>          
>            Bulk translation for knowledge
>                articles
>            Translate multiple knowledge articles in different languages at once by using the
>              Bulk Translation feature, which supports the localization framework. You can only
>              initiate a translation for a language added in the Localization settings.

> [!quote]+ Updated on 2023/01/26 17:33:41
>
> DocIntel
>                A container that enables users to perform tasks related to documents such as
>                  verification and new document creation.
>              
>              
>                Email Composer (mini)
>                Renders the email composer in smaller spaces and within another component,
>                  such as in a side panel on a record page.
>              
>              
>                Form record presence
>                Adds an avatar when another user is viewing the record at the same time. If
>                  two other users are viewing the record, their avatars are both displayed. If more
>                  than two users are present, the first two user avatars are displayed with a third
>                  overflow trigger “avatar.”This component offers the Record
>                      presence preset, which displays other users who are viewing the
>                    record concurrently. Record presence is used with the Form
>                  component.

> [!quote]+ Updated on 2023/01/26 17:34:53
>
> Sidebar overview
>            Enable your agents to create, open, and search for discussions about their work with
>              other agents.
>          
>          
>            Configuring a custom
>                menu
>            Enable your administrators to add custom menus with items that are most useful for
>              them to complete their work.
>          
>          
>            Next Experience Readiness
>                Checker
>            Enable administrators to examine your instance for usage of applications that are
>              not compatible with Next Experience.

> [!quote]+ Updated on 2023/01/26 17:35:53
>
> Analyze the importance and
>                impact tolerance of your business services
>            Analyze the importance rating and impact tolerance duration of your business
>              services by selecting a questionnaire template in the Importance and Impact Tolerance
>              assessment. Review the rating that is generated based on the questionnaire response.
>              After completion of the analysis, approve the assessment.​
>          
>          
>            Self-attest your business
>                services
>            Verify the status of your business services and determine if any service was
>              breached. After the verification is complete, self-attest the status of the business
>              services by signing and generating the self-attestation report. You can upload the PDF
>              of the self-attestation report in the application.

> [!quote]+ Updated on 2023/01/26 17:36:01
>
> Business services and related
>                lists
>            Add business services into your Operational Resilience application
>              and monitor their status on the dashboard. View the service dependencies and issues
>              that are related to the processes, importance and impact assessments, scenario
>              analysis, and so on.

> [!quote]+ Updated on 2023/01/26 17:40:53
>
> Create, edit, and configure configurable workspace dashboards
>            Use an inline editor to quickly and easily create and edit configurable workspace dashboards. Users with a role can use this editor
>              to work on their dashboards in runtime. This inline editor is included in the
>              Dashboard page template. More technical users also have a powerful and feature-rich
>              technical editor that brings dashboard construction functionality into the UI Builder.
>          
>          
>            Configure
>                visualizations
>            If you cannot find the visualization you want, configure a new data visualization.
>              You now have an inline visualization editor to quickly and easily create and edit data
>              visualizations. You can even seamlessly create these new visualizations while editing
>              a dashboard. Any user with a role can use this editor. With the right roles, you can
>              save your visualization to the shared library.
>          
>          
>            Dashboard, Visualization, and KPI libraries
>            You have a unified experience for searching and viewing reusable configurable workspace dashboards, visualizations, or indicators. Search
>              and view reusable visualizations for multiple workspaces or dashboards. Bookmark
>              visualizations or filter on those shared with or created by you. Only in Platform Analytics Workspace can you browse the dashboards
>              from every configurable workspace.
>          
>          
>            Certify configurable workspace dashboards and visualizations
>            Administrators can mark selected configurable workspace dashboards
>              and data visualizations as certified for use across a department or organization. You
>              can filter on certification when browsing through dashboards or visualizations.
>          
>          
>            Export data
>                visualizations
>            From the Visualization Designer, you can export a data visualization as a PDF, a
>              PNG, or a JPEG file. Use this feature to build presentations, to share the report with
>              users off the instance, or to keep old reports on different versions to track
>                progress.Limitations: 
>                  Scheduling is not available.
>                  Pivot, calendar, and indicator scorecard visualizations cannot be
>                    exported.
>                  You can only export visualizations from the visualization designer, not from
>                    dashboards.
>                This feature is available in update 1.1, from the ServiceNow Store.
>          
>          
>            See data visualization
>                usage
>            Use the data visualization details pane to view all dashboards that contain the
>              visualization. Furthermore, when you save or delete a visualization, you are warned of
>              which dashboards contain the visualization and prompted to confirm your action.This
>                feature is available in update 1.1, from the ServiceNow Store.
>          
>          
>            Configure dashboards and visualizations more easily
>            Benefit from the following improvements to the user experience:
>                Lazy loading on dashboards
>                Can copy link URL
>                Can share in editing mode
>                Can edit visualization titles inline
>              These improvements are available in update 1.1 on the ServiceNow Store.
>          
>          
>            Include this workspace's
>                features in your configurable workspaces
>            In the UI Builder, use the Analytics Center page
>              template to include the features of the Platform Analytics Workspace in your own configurable
>              workspace. You can also create a workspace with these features in the App Engine Studio. However, only the Platform Analytics Workspace lets you view dashboards in all
>              the other workspaces.

> [!quote]+ Updated on 2023/01/26 17:41:12
>
> Data privacy
>            Remove personally identifiable information (PII) from user data when it is migrated
>              from a production instance to a non-production instance.
>            De-identify users and apply anonymization per the GDPR (general data protection
>              regulation) right to be forgotten, in which data (tables or columns) are de-identified
>              when associated with a user.
>          
>          
>            Data filtration
>            Use data filtration as a separate form of access control designed to work along with
>              the existing access control list (ACL) rules on your instance. Data filtration denies
>              access to tables and records that don't match subject attributes defined by a security
>              administrator.
>            Make auditing, reporting, and denying access to data easier with data filtration
>              than using an ACL. ACLs are evaluated after data filtration runs. ACLs work on the
>              remaining rows that were not filtered out by data
>              filtration.
>            Add exclusion tables to prevent those tables from being used to create data
>              filtration rules.
>            Access potential performance enhancements by not relying on scripting and improve
>              auditing ability with declarative authorization
>              controls.
>            Use table hierarchy support in data filtration rules.Use the new
>              authorization mechanism to prevent search operations on protected
>              fields.
>            Use data filtration enforcement to be aware of script versus java calls.
>            Use field query roles as the new authorization mechanism to prevent search
>              operations on protected fields, as designated by the dictionary
>              attribute.

> [!quote]+ Updated on 2023/01/26 17:41:23
>
> Script Includes
>            Enforce role-based access control to be auto created when new client-callable script
>              includes (CCSI) are included. See access controls as a related list directly from the
>              CCSI
>              form.
>          
>          
>            IP Address Access
>                Control
>            IP Address Access Control added IPv6 support.
>          
>          
>            Avoid log tampering
>            Use protected tables to lock down and log any attempts to update or delete records
>              in the system log tables as a system administrator. Specify separate controls for each
>              system log table to identity update actions versus delete actions.

> [!quote]+ Updated on 2023/01/26 17:41:38
>
> Antivirus Scanning
>            Use the support for HTTPS communication protocol for enhanced security and
>              protection.

> [!quote]+ Updated on 2023/01/26 17:41:45
>
> Other settings and security
>                resources
>            Existing administrators can control access to older versions of AngularJS and JQuery
>              usages and libraries. zBoot configurations do not have access, by default.

> [!quote]+ Updated on 2023/01/26 17:44:05
>
> Multidimensional mining
>            Support analyzing business processes that expand multiple sub processes in one view.
>              For example, you can analyze your HR onboarding process including all facilitating
>              processes such as IT, facilities, and finance.

> [!quote]+ Updated on 2023/01/26 17:44:41
>
> Business services support
>                model
>              
>            Enable business owners to request services and submit cases for new business or
>              product registrations.
>          
>          
>            Agency support model
>            Enable agencies and agency members to share relevant cases and information in their
>              configurable workspaces, provide services to constituents and businesses, and submit
>              agency cases.
>          
>          
>            Service Request Playbook
>                application
>            
>              Implement an end-to-end workflow for handling and resolving non-emergency service
>                requests submitted by the public, for example 311 or 211 service requests for
>                government agencies in the United Sates through the Service Request Playbook
>                application. Enable constituents to select non-emergency requests from a service
>                catalog on the Government Service Portal. Help agents resolve these requests quickly
>                and efficiently by providing predefined resolution processes.

> [!info]+ Updated on 2023/01/26 17:45:06
>
> Service Bridge authorized
>                users
>            Provide your users with the required access to create the requests and orders from
>              the published items in the service catalog on the customer's instance. The customer
>              can also manage the list of users within the provider's criteria from the provider's
>              own instance.
>          
>          
>            Service Bridge remote
>                task
>            Resolve and fulfill multiple customer tasks, such as incidents, cases, and service
>              requests, between the provider and customer instances. The Remote Task Outbound
>              Assignment enables the sender to provide more relevant information for tasks, such as
>              incidents, cases, and requests and the receiver to act on these tasks.
>          
>          
>            Service Bridge remote choice
>                fields
>            Enable a provider's customer, in their own instance, to read the choice list of a
>              Remote Choice field directly from the provider's instance. Remote Choice fields are
>              available in the remote record producers. You no longer have to replicate and maintain
>              the data between the ServiceNow instances of the provider and
>              their customers.
>          
>          
>            Service Bridge Transform
>                framework
>            With the Transform Framework, the provider can transform the inbound and outbound
>              data for remote tasks between their ServiceNow instance and the
>              customer's instance.

> [!quote]+ Updated on 2023/01/26 17:45:33
>
> Configurable Catalog
>                Builder
>            Configure the Catalog Builder so catalog item editors can enter custom details.
>          
>          
>            Exclusive update sets for
>                catalog items
>            Transfer catalog items published through Catalog Builder from one instance to
>              another easily by using update sets that are automatically and exclusively created for
>              the catalog item. You can transfer catalog items created by a business user from a
>              non-production to production instance.
>          
>          
>            Service Catalog Overview
>                dashboard
>            Monitor aggregated catalog item data like fulfillment automation coverage,
>              translation coverage, conversational coverage, and so on using the Service Catalog Overview dashboard.
>          
>          
>            Default value configuration in
>                Catalog Builder
>            Configure the default value for a question in Catalog Builder so it is set when
>              users open a catalog item form.

> [!info]+ Updated on 2023/01/26 17:45:56
>
> Service Operations Workspace for
>                ITSM landing page for tier-2 agents
>            Prioritize work for tier-2 agents by evaluating an overview of assignments, outages,
>              and service announcements.
>          
>          
>            Shift schedule of a tier-1 agent
>                on Service Operations Workspace for ITSM landing page
>            When the Shift Planning for Configurable Workspace application (sn_uib_agent_sp) is
>              installed, view the shift schedule of a tier-1 agent.
>          
>          
>            Investigate experience for an
>                incident
>            Streamline investigation and accelerate resolution of an incident by retrieving and
>              capturing metrics data for affected CIs. This metrics data is collected from various
>              servers and computers using Agent Client Collector (ACC).

> [!info]+ Updated on 2023/01/26 17:46:05
>
> Reduce the interaction request queue in an agent’s inbox by enabling automatic
>                  assignment of interactions using Advanced Work Assignment (AWA)
>                  assignment rules.
>                Starting in version 1.3, an agent can perform any of the following tasks while
>                  working on an interaction.
>                    Complete an interaction
>                    Abandon an interaction when a user does not respond
>                    Search for KB articles using Agent Assist

> [!info]+ Updated on 2023/01/26 17:46:23
>
> Define and generate
>                sitemaps
>              
>            
>              Use static XML or a script to define a sitemap that automatically regenerates
>                daily.
>              Deactivate a sitemap configuration to test a configuration before you make it
>                active.
>              Regenerate the sitemap on demand.
>            
>          
>          
>            
>              Access sitemap files
>              
>            Access the sitemap by URL or downloadable files. You can provide the URL in Google Search Console or in your robots.txt file for web crawlers to
>              use.
>          
>          
>            
>              Review sitemap generation
>                logs
>              
>            Check sitemap generation logs to troubleshoot any issues.

> [!quote]+ Updated on 2023/01/26 17:46:35
>
> Simulate the cost of migrating
>                on-premise resources to the cloud
>            Get an estimate before moving to Microsoft Azure or AWS cloud by simulating the cost of migrating your
>              on-premise resources to the cloud. You also receive recommendations on End of Life for
>              hardware and software, as well as resource utilization. The recommendation also
>              differentiates the cost of various cloud providers with or without the cost of Bring
>              Your Own License. When you decide on the cloud provider, you can create a change
>              request to perform the migration.

> [!quote]+ Updated on 2023/01/26 17:47:35
>
> Integrate with Workday
>                applications out-of-the-box
>            
>              Use the ServiceNow
>                SaaS License Management application to integrate with the Workday applications such as Workday Human Capital
>                Management and Workday Financial Management introduced in version
>                10.0.2 of Software Asset Management - SaaS License Management.
>            
>          
>          
>            
>            Renew software contracts through
>                Contract renewal workflow
>            
>              Use the Contract Renewal workflow to notify contract owners when a contract is
>                about to expire or already expired and allow them to renew or expire the contract
>                record. This workflow maintains the contract history while updating software
>                licenses, terms, and conditions to a new contract.

> [!quote]+ Updated on 2023/01/26 17:47:51
>
> Increased transparency for
>                capacity-based products
>            View how allocation totals are computed for table queries and scripted definitions
>              in capacity-based products. View the definition record for each product in the
>              Subscription details page and execute the definition to view the latest results on
>              demand.

> [!info]+ Updated on 2023/01/26 17:48:03
>
> Table Builder
>            This application now displays as “Table Builder” in the ServiceNow Store
>              instead of “AES Table Builder.”
>          
>          
>            Formula Builder
>            Configure calculated values when configuring field column information without
>              needing to write a script.
>          
>          
>            All form views list
>            Starting in Table Builder 23.0.1, access a filterable list of form
>              views when working with forms in App Engine Studio. This navigational
>              menu also allows you to quickly navigate to a different form view, create a form view,
>              duplicate a form view, or configure a related list or UI action.
>          
>          
>            Table field column search and
>                filtering
>            Starting in Table Builder 23.0.1, filter the list of available table
>              fields for a selected table using keywords or select an option to filter inactive or
>              extended fields on the Table tab in App Engine Studio.

> [!quote]+ Updated on 2023/01/26 17:49:24
>
> Presets
>            Select a preset to apply a pre-defined configuration to certain components. Presets
>              simplify the configuration of component properties and event handlers. You can also
>              override preset values to customize components or disable presets.
>          
>          
>            Controllers
>            Use the new Record Controller to encapsulate the business logic that is related to
>              record pages and to simplify component configuration. Controllers can bind to data,
>              similar to data resources, and also include state parameters and scripting. Presets
>              use the data in a controller to auto-configure a component.
>          
>          
>            Standard Record Page
>                template
>            Use the new Standard Record page template that includes the default presets for
>              components and the Record Controller that wires components to data and automatically
>              applies test values. This template reduces the time to create record pages and can be
>              customized while being upgrade-safe. A blank record page template that includes only
>              the Record Controller is also available.
>          
>          
>            Preset-defined event
>                mappings
>            Use a preset to apply event mappings automatically for certain components. You can
>              also override event mappings that are configured by presets or disable presets.

> [!info]+ Updated on 2023/01/26 17:49:38
>
> Simultaneously work on multiple
>                department tickets using the associated ticket creation capability
>            Create an associated cross-department ticket and assign it to the relevant
>              department to be worked on. The UR is automatically attached to the new associated
>              ticked and can be tracked

> [!quote]+ Updated on 2023/01/26 17:49:53
>
> Building and applying your
>                upgrade plan
>            Accelerate your upgrades by packaging your customizations into applications in an
>              upgrade plan. You can also preview your upgrade plan before implementing it to your
>              upgrades.

> [!info]+ Updated on 2023/01/26 17:50:14
>
> Cloning and configuring a Vendor
>                Management Workspace page using Next Experience UI Builder
>            Clone the read-only Vendor Management Workspace pages so that you can
>              customize them to fit your needs by using the UI Builder.

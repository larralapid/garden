---
doc_type: hypothesis-highlights
url: 'https://developer.servicenow.com/app.do'
---

# ServiceNow Developers

## Metadata
- Author: [developer.servicenow.com]()
- Title: ServiceNow Developers
- Reference: https://developer.servicenow.com/app.do
- Category: #article

## Page Notes
## Highlights
- Applications created in Studio are known as scoped applications. Scope uniquely identifies every application file, not just within a single ServiceNow instance, but on every instance everywhere in the world.  — [Updated on 2017-12-29 14:33:56](https://hyp.is/NbH_AOzPEeew4tvrIcOf3Q/developer.servicenow.com/app.do) — Group: #Public

- Scope protects an application, its files, and its data from conflicts with other applications — [Updated on 2017-12-29 14:34:20](https://hyp.is/RBA1bOzPEeexpFtsnizQuQ/developer.servicenow.com/app.do) — Group: #Public

- Scope determines which parts of an application are available for use by other applications in ServiceNow — [Updated on 2017-12-29 14:34:22](https://hyp.is/RZ-CeuzPEeevQsdSfxVhAw/developer.servicenow.com/app.do) — Group: #Public

- Scope allows developers to configure which parts of their application can be acted on by other applications — [Updated on 2017-12-29 14:34:25](https://hyp.is/Rv1vkuzPEeeCVEO9oFH7Cw/developer.servicenow.com/app.do) — Group: #Public

- Scope prevents work done in the main ServiceNow browser window (not in Studio) from becoming part of an application’s files — [Updated on 2017-12-29 14:34:28](https://hyp.is/SQulGuzPEeeBQq8KIsTmOw/developer.servicenow.com/app.do) — Group: #Public

- The scope value is set automatically by ServiceNow whenever you create an application in Studio.  — [Updated on 2017-12-29 14:34:44](https://hyp.is/UqWAluzPEeeomROyHsEdxQ/developer.servicenow.com/app.do) — Group: #Public

- The scope is constructed by concatenating 3 values: x_ <value from the glide.appcreator.company.code system property>_ <first_10_characters_of_app_name> — [Updated on 2017-12-29 14:34:52](https://hyp.is/V0qwxuzPEeeFvyt7R1o4jg/developer.servicenow.com/app.do) — Group: #Public

- All scope names start with x_. — [Updated on 2017-12-29 14:35:04](https://hyp.is/XlXwTOzPEeeWRjN4hTptxA/developer.servicenow.com/app.do) — Group: #Public

- The glide.appcreator.company.code system property is a unique value ServiceNow sets to identify your company’s instances as belonging to the same company.  — [Updated on 2017-12-29 14:35:31](https://hyp.is/boXTdOzPEeey_feIIVmiOw/developer.servicenow.com/app.do) — Group: #Public

- When you are working in a non-Studio ServiceNow window you have to be aware of which scope you are working in. — [Updated on 2017-12-29 14:35:51](https://hyp.is/erR2RuzPEeeLNT_Op-FrXw/developer.servicenow.com/app.do) — Group: #Public

- If you want to easily see which scope is the current scope without having to wait for a warning message, add the Application Picker to the ServiceNow Banner. — [Updated on 2017-12-29 14:36:58](https://hyp.is/ona7gOzPEee1NGNMrpcY-g/developer.servicenow.com/app.do) — Group: #Public

- ServiceNow Studio is the application development environment for scoped applications.  — [Updated on 2017-12-29 14:37:08](https://hyp.is/qITQZuzPEeeE_890Gz6a8A/developer.servicenow.com/app.do) — Group: #Public

- Use Studio to: Create and edit applications Create application files Determine which application files comprise an application Link applications to a Git source code repository Publish applications to the ServiceNow application repository Submit applications to the ServiceNow App Store — [Updated on 2017-12-29 14:37:19](https://hyp.is/rvpboOzPEeeCVQPUZvDAQg/developer.servicenow.com/app.do) — Group: #Public

- The process for creating applications is: Launch Studio. Click the Create Application button. Choose an application creation option. Open the newly created application for editing in Studio. — [Updated on 2017-12-29 14:37:46](https://hyp.is/vsi-tOzPEeevQ9NhJKMCrw/developer.servicenow.com/app.do) — Group: #Public

- To launch Studio, open System Applications > Studio in the Application Navigator.  — [Updated on 2017-12-29 14:37:52](https://hyp.is/wp5LbOzPEeeQII9Dwc7oTA/developer.servicenow.com/app.do) — Group: #Public

- In the Create Application dialog, choose the Create button for the option you would like to use: Start from scratch: Provide only the application name Create custom application: Provide the application name, menu name, user role, and optionally create a table Start from a service: Use an existing service from Service Creator to create a new service — [Updated on 2017-12-29 14:38:16](https://hyp.is/0SHITuzPEeeLNhNfM0ub1g/developer.servicenow.com/app.do) — Group: #Public

- Applications cannot be deleted from Studio. Return to the main ServiceNow browser window and use the Application Navigator to open System Applications > Applications. — [Updated on 2017-12-29 14:40:37](https://hyp.is/JQ6r3uzQEeeBRAvOrWCpIQ/developer.servicenow.com/app.do) — Group: #Public

- Studio can be integrated with a Git repository to manage source control for the application development process. — [Updated on 2017-12-29 14:42:29](https://hyp.is/Z8YlJOzQEeey3OuvWQbtkQ/developer.servicenow.com/app.do) — Group: #Public

- Fork button () to create a copy of the repository in your GitHub account. — [Updated on 2017-12-29 14:50:39](https://hyp.is/i-HMoOzREee1jm8qX-ixCg/developer.servicenow.com/app.do) — Group: #Public

- IMPORTANT: If the branch creation fails and you see a message about confirming the user has read, write, and create branch access, it means you connected Studio to the ServiceNow version of the repository and not your forked version of the repository. In Studio, open the Source Control > Edit Repository Configuration menu item and re-configure the connection between Studio and your forked repository. — [Updated on 2017-12-29 15:37:58](https://hyp.is/KAFlBOzYEeevwkdJgeEo4g/developer.servicenow.com/app.do) — Group: #Public

- After creating the application in Studio, the next step is to start development work. — [Updated on 2017-12-29 15:38:08](https://hyp.is/Lc3BTuzYEeekWzNRfSzA9g/developer.servicenow.com/app.do) — Group: #Public

- Typically, but not required, the first application files to be developed are the application tables. — [Updated on 2017-12-29 15:38:39](https://hyp.is/QEkfJuzYEeeHFXtyF8NE4w/developer.servicenow.com/app.do) — Group: #Public

- For each application table, a decision must be made whether to extend an existing table or not. — [Updated on 2017-12-29 15:38:53](https://hyp.is/SKIShuzYEeeZDhceCfVePw/developer.servicenow.com/app.do) — Group: #Public

- Extending an existing ServiceNow table means the table you create will inherit the parent table’s columns as well as the table’s business logic. — [Updated on 2017-12-29 15:39:02](https://hyp.is/TgJW0uzYEeecyYuUxhXH6Q/developer.servicenow.com/app.do) — Group: #Public

- Examine the schema to see the relationships between the selected table and other tables in the database. — [Updated on 2017-12-29 16:09:21](https://hyp.is/im9iKOzcEeeDgKeQhDGppQ/developer.servicenow.com/app.do) — Group: #Public

- Creating a table without extending an existing table means that the application developer has complete control over the table columns and the table’s business logic.  — [Updated on 2017-12-29 16:21:18](https://hyp.is/NWmfiuzeEeeaB98GLh956A/developer.servicenow.com/app.do) — Group: #Public

- Creating a table without extending an existing table means that the application developer has complete control over the table columns and the table’s business logic. This type of table is often used for tables containing reference/lookup data. — [Updated on 2017-12-29 16:25:30](https://hyp.is/zBNJGOzeEeey48-AspIH1Q/developer.servicenow.com/app.do) — Group: #Public

- ServiceNow adds 6 fields to all tables including those that do not extend an existing table: Created by Created Sys ID Updates Updated by Updated — [Updated on 2017-12-29 16:26:03](https://hyp.is/31L85OzeEeeCX1vffl5M8Q/developer.servicenow.com/app.do) — Group: #Public

- Configure the file options. Fields preceded by an asterisk are required. *Label: Friendly name of the new table. *Name: Name of the table in the database. Automatically created. *Extends table: The table to extend. When extending a table, the new table inherits all columns from the parent table. Leave this field blank if you are not extending a table. Tables that do not extend an existing table will automatically contain seven default fields. Application: The Application (scope) this table belongs to (read-only field). Create module: Select to add a menu option to the Application. Create mobile module: Select to add a menu option to the mobile application menu. Add module to menu: Select or create an Application menu to add the module to. The default is to create an Application menu. New menu name: Appears when – Create new – is selected in the Add module to menu. Specifies the Application Menu to add the module to. Columns Section A list of table columns. Controls Section Extensible: Select this option if you intend for the table to be extended by tables in this or other applications. Live feed: Select to enable interactions between this table and the Live Feed application. Auto-number: When selected sets the prefix, starting number, and number of digits for the records from the table. *Create access controls: When selected creates delete, write, read, and create permissions for table records. All scoped applications are required to create Access Controls for its tables. User role: Sets the role required for a user to access the table’s records. Application Access Section Accessible: Select the This application scope only option to provide complete runtime protection. Select the All application scopes option to allow access to any scope. Can read/create/update/delete: Select these options to allow scripts from other application scopes to perform these database operations on the application’s tables. These options never apply to the current application’s scope. Allow access to this table via web services: Allow scripts to make web services calls against the table. The user performing the query must have permissions to access the table. Allow configuration: Allows application developers working in other application scopes to write scripts for this table. — [Updated on 2017-12-29 16:37:45](https://hyp.is/ghH78OzgEeeMLy8_ar_utQ/developer.servicenow.com/app.do) — Group: #Public

- Question: Which table configuration options created the additional application files? Answer: Role: The role was created by the User role field in the Controls section. Access Controls: The Access Controls (security) were created by the Create access controls field in the Controls section. — [Updated on 2018-01-02 11:40:37](https://hyp.is/qUN0RO_bEeeFy_-772DEUg/developer.servicenow.com/app.do) — Group: #Public

- Application Menu: The Application Menu was created because the Add module to menu field value was --Create new --. The New menu name field specified the name for the Application Menu. Modules: The modules were created by the Create module and Create mobile module fields. — [Updated on 2018-01-02 11:41:31](https://hyp.is/yTtByO_bEeeBsXtnuNlARg/developer.servicenow.com/app.do) — Group: #Public

- Configure a Module Configure modules using these options: Title: Defines the module name. Choose a title that clearly identifies the module. You might want to model the module names on the ServiceNow baseline application modules. For example, you might have a module called “Create New“ rather than “Create NeedIt Record“. Application Menu: Specifies the application (by name) under which the module appears. Order: Order in which Module appears within an application menu. By convention, modules are numbered by increments of one hundred: 100, 200, 300 etc. Modules without an order value appear before ordered modules in the Application Navigator. Hint: Defines the tool tip that appears when a user points to the module name. Roles: Restricts module access to the specified roles. Active: Defines whether the module appears in the Application Navigator. Override application menu roles: Select this option to allow access to this module to users who are not authorized for the application menu. Link type: Specifies what type of link this module opens. Table: The name of the table this module is a part of. View Name: Specifies the View in which the module opens. Filter: Used for lists. Specifies which records to display. — [Updated on 2018-01-02 11:45:34](https://hyp.is/WpXGou_cEeep-dfyDf3qew/developer.servicenow.com/app.do) — Group: #Public

- All tables in ServiceNow have a default list and form. — [Updated on 2018-01-02 14:14:39](https://hyp.is/LgI6Zu_xEeenlT_pfJJ-OA/developer.servicenow.com/app.do) — Group: #Public

- The fields which appear in the default layouts depend on whether the custom table has extended an existing table or not. — [Updated on 2018-01-02 14:16:55](https://hyp.is/fxOCyu_xEeeUYbdwl94uuw/developer.servicenow.com/app.do) — Group: #Public

- Tables that do not extend another table have fewer fields in the default list and form layouts. — [Updated on 2018-01-02 14:17:40](https://hyp.is/mdK1Nu_xEeefos-wn0Zs-w/developer.servicenow.com/app.do) — Group: #Public

- To make your custom application look like a ServiceNow baseline application, there are a few conventions you may choose to follow: Field names are short but do not use acronyms, even when the acronym is industry-standard: Configuration item and not CI Field names are one or two words: Short description and not Briefly describe what happened Only the first letter is capitalized in field names with multiple words: Contact type and not Contact Type — [Updated on 2018-01-02 14:18:43](https://hyp.is/v5dksO_xEeefwDdkM7qWwg/developer.servicenow.com/app.do) — Group: #Public

- Inherited fields cannot be deleted from a table but user-created fields can be deleted by clicking the X. — [Updated on 2018-01-02 14:26:01](https://hyp.is/xLkWIu_yEeeZU0Oeuirpcg/developer.servicenow.com/app.do) — Group: #Public

- Build the NeedIt Application Module Recap In this module you created the NeedIt application for managing requests for services from multiple departments. Take the time to design an application before beginning development Studio is ServiceNow’s development environment Applications created in Studio are scoped applications Scope uniquely identifies applications and application files Use the Form Designer to simultaneously create fields and form layouts Enhance the application UI by using views and sections to organize forms — [Updated on 2018-01-02 15:30:49](https://hyp.is/0aqPBu_7EeexEZ-BPYLY-g/developer.servicenow.com/app.do) — Group: #Public

- Client-side scripts execute within a user’s browser and are used to manage forms and form fields. — [Updated on 2018-01-02 18:27:56](https://hyp.is/kCxfKPAUEeepRPtDydurLA/developer.servicenow.com/app.do) — Group: #Public

- NOTE: There is also an onCellEdit Client Script type, which is for lists rather than forms. onCellEdit Client Scripts are not addressed in this module. — [Updated on 2018-01-02 18:48:37](https://hyp.is/c96w1PAXEeeemdsNO4WqeQ/developer.servicenow.com/app.do) — Group: #Public

- Configuring the Client Script As with any script, the configuration tells the script when to execute. The Client Script configuration options are: Name: Name of Client Script. Use a standard naming scheme to identify custom scripts. Table: Table to which the script applies. UI Type: Select whether the script executes for Desktop and Tablet or Mobile/Service Portal or All. Type: Select when the script runs: onChange, onLoad, or onSubmit. Field Name: Used only if the script responds to a field value change (onChange); name of the field to which the script applies. Active: Controls whether the script is enabled. Inactive scripts do not execute. Inherited: If selected, this script applies to the specified table and all tables that inherit from it. For example, a client script on the Task table will also apply to the Change, Incident, Problem and all other tables which extend Task. Global: If Global is selected the script applies to all Views. If the Global field is not selected you must specify the View. View: Specifies the View to which the script applies. The View field is visible when Global is not selected. A script can only act on fields that are part of the selected form View. If the View field is blank the script applies to the Default view.  — [Updated on 2018-01-02 22:57:20](https://hyp.is/MnTglvA6EeeeotNtbMyIxg/developer.servicenow.com/app.do) — Group: #Public

- Type: Select when the script runs: onChange, onLoad, or onSubmit. — [Updated on 2018-01-02 22:57:58](https://hyp.is/SUImxvA6EeePN3NYa6fFUA/developer.servicenow.com/app.do) — Group: #Public
    - Annotation: When to use onCell client script? 
- The GlideForm methods are accessed through the global g_form object that is only available in client-side scripts. — [Updated on 2018-01-03 12:35:59](https://hyp.is/j4IlkvCsEeeYRcdy3j9Bfg/developer.servicenow.com/app.do) — Group: #Public




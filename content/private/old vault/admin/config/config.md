---

database-plugin: basic

---

%% dbfolder:yaml
name: new database
description: new description
columns:
 column1:
  input: text
  key: column1
  accessorKey: column1
  label: Column 1
  position: 0
  config:
   enable_media_view: true
   media_width: 100
   media_height: 100
   isInline: false
filters:
 enabled: false
 conditions:
config:
  remove_field_when_delete_column: false
  cell_size: normal
  sticky_first_column: false
  group_folder_column: 
  remove_empty_folders: false
  automatically_group_files: false
  hoist_files_with_empty_attributes: true
  show_metadata_created: true
  show_metadata_modified: true
  show_metadata_tasks: true
  show_metadata_inlinks: false
  show_metadata_outlinks: false
  source_data: current_folder
  source_form_result: root
  source_destination_path: /
  frontmatter_quote_wrap: false
  row_templates_folder: /config/templates/db-folder-plugin
  current_row_template: 
  pagination_size: 10
  enable_js_formulas: true
  formula_folder_path: /
  inline_default: false
  inline_new_position: bottom
  date_format: yyyy-MM-dd
  datetime_format: yyyy-MM-dd HH:mm:ss
%%
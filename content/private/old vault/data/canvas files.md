---

database-plugin: basic

---

```yaml:dbfolder
name: Canvas Files
description: All canvas files
columns:
  fileClass:
    input: text
    accessorKey: fileClass
    label: fileClass
    key: fileClass
    id: fileClass
    position: 0
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: true
      task_hide_completed: true
      footer_type: none
      persist_changes: true
  database-plugin:
    input: text
    accessorKey: database-plugin
    label: database-plugin
    key: database-plugin
    id: database-plugin
    position: 1
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: false
      task_hide_completed: true
      footer_type: none
      persist_changes: false
config:
  remove_field_when_delete_column: false
  cell_size: wide
  sticky_first_column: true
  group_folder_column: 
  remove_empty_folders: false
  automatically_group_files: false
  hoist_files_with_empty_attributes: true
  show_metadata_created: true
  show_metadata_modified: true
  show_metadata_tasks: true
  show_metadata_inlinks: true
  show_metadata_outlinks: true
  source_data: current_folder
  source_form_result: root
  source_destination_path: /
  row_templates_folder: admin/config/templates/db-folder-plugin
  current_row_template: 
  pagination_size: 10
  font_size: 16
  enable_js_formulas: true
  formula_folder_path: /
  inline_default: true
  inline_new_position: bottom
  date_format: yyyy-MM-dd
  datetime_format: "yyyy-MM-dd HH:mm:ss"
  metadata_date_format: "yyyy-MM-dd HH:mm:ss"
  enable_footer: true
  implementation: default
filters:
  enabled: false
  conditions:
```
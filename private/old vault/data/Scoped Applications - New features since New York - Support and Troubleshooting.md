---
raindrop_id: 489151577
raindrop_last_update: 2023-01-24T22:43:49.005Z
---

# Metadata
Source URL:: https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB0794114


---
# Scoped Applications - New features since New York - Support and Troubleshooting

Part of the nature of the platform is that any record that exists in your instance continues to exist, through platform upgrades and plugin installs and app updates- unless there is a specific command

## Highlights

> [!quote]+ Updated on 2022/12/21 13:49:22
>
> Scoped app developers want their installed app versions to look like (to have the same files) as when they clicked Publish for that version on their development system. If the develop version 1 of their app, then delete a Business Rule and a Script Include and replace it with an Event + Script Action for version 2 of their app, then they want the Business Rule and the Script Include to be deleted when their instances upgrade from version 1 of the app to version 2. However, since we don't capture that "delete" action as a Fix Script or as a copy of the record with a Delete action (because the records no longer exist), you lose that history. In this case, user's instances which had version 1 installed will continue to have the Business Rule and the Script Include, even though version 2 of the application doesn't ship them anymore. This makes for an interesting comparison with instances that installed version 2 and never had version 1 at all. In those instances, that Business Rule and Script Include would not be present.

> [!quote]+ Updated on 2022/12/21 13:50:11
>
> ew concept to Scoped Applications, called the author_elective_update folder. When your application is packaged for the repo or for committing to Source Control, we will unload additional things into this folder that we would previously have ignored. The author_elective_update folder is where we will unload Deletes. When your application is installed on your own instances, we will automatically load these Deletes from the author_elective_update folder.

> [!quote]+ Updated on 2022/12/21 13:50:39
>
> Additionally, if you make changes to the schema of your application by deleting a table or a column, that delete will be tracked in author_elective_update but will not be applied by default.

> [!quote]+ Updated on 2022/12/21 13:51:44
>
> One other type of metadata that will also be put into author_elective_update are choice sets. We will now be putting choice sets for your app's tables into the author_elective_update folder. We do this so that you can modify your choice lists- for instance, by removing one option and adding another- and seeing the option actually get removed when your app is updated on your production instance.

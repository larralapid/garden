import { PageLayout, SharedLayout } from "./quartz/cfg"
import * as Component from "./quartz/components"

// components shared across all pages
export const sharedPageComponents: SharedLayout = {
  head: Component.Head(),
  header: [
    Component.Breadcrumbs(),
  ],
  footer: Component.Footer({
    links: {
      GitHub: "https://github.com/larralapid"
    },
  }),
}

// components for pages that display a single page (e.g. a single note)
export const defaultContentPageLayout: PageLayout = {
  beforeBody: [
    Component.ArticleTitle(),
    Component.ContentMeta(),
  ],
  left: [
    Component.Darkmode(),
    Component.Search(),
    //Component.DesktopOnly(Component.Spacer()),
    Component.DesktopOnly(Component.Explorer({
      title: "nav", // title of the explorer component

      folderClickBehavior: "link", // what happens when you click a folder ("link" to navigate to folder page on click or "collapse" to collapse folder on click)
      folderDefaultState: "collapsed", // default state of folders ("collapsed" or "open")
      useSavedState: true, // whether to use local storage to save "state" (which folders are opened) of explorer
    })),
  ],
  right: [
    Component.Graph(),
    Component.Backlinks(),
    Component.TagList(),
    //Component.DesktopOnly(Component.TableOfContents()),
    Component.TableOfContents()
  ]
}

// components for pages that display lists of pages  (e.g. tags or folders)
export const defaultListPageLayout: PageLayout = {
  beforeBody: [Component.ArticleTitle(), Component.ContentMeta()],
  left: [
    //Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
    Component.DesktopOnly(Component.Explorer()),
  ],
  right: [],
}

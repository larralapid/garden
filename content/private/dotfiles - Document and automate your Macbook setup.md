---
raindrop_id: 460097051
raindrop_last_update: 2022-12-01T22:10:43.128Z
---
# dotfiles - Document and automate your Macbook setup


# Metadata
Source URL:: https://about.gitlab.com/blog/2020/04/17/dotfiles-document-and-automate-your-macbook-setup/


---
# dotfiles - Document and automate your Macbook setup

Document and automate your Macbook setup with installing tools and well-known configuration settings. Follow best practices from a developer’s point of view.

## Highlights

> [!quote]+ Updated on 2022/10/19 03:04:42
>
> I’ve learned that this setting can be enabled on macOS too for the trackpad which is my preferred input method since then. In order to automate this setting, run the following CLI commands:
>defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
>defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
>defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

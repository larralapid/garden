---
tags: project, chrome-extension, zettelkasten, plugin
aliases: null
cssclass: null
created: 2022-11-11T23:41:26-05:00
updated: 2022-11-12T15:10:44-05:00
state: revisit
---
## project info 
**extension id:** ljhoejkfignpfamemkdicbfcjggillbn
**project folder path:**  [/Users/larralapid/Desktop/chrome-zettel](/Users/larralapid/Desktop/chrome-zettel)
**github repo name: ** chrome-zettel

## [[scope]]
### not sure if mvp yet 
- 
### mvp
- button click --> copy current url --> create new text file in specific folder with that url text --> display url to obsian url 
- if the url exists, "youve saved this as a source before"

### [[not in scope]]
- highlight mode 
	- highlighting with cursor 
	- keyboard mode or "vim" mode. 
		- go into this mode by right clicking on a block of text 
		- this will initiate a blinking cursor to appear right before the first character of the paragraph 
		- they can move the cursor by arrow key 
		- or they can move cursor with mouse by hovering. this will move cursor. 
		- when they hit "h" key, the active highlight mode will be on. now when the cursor moves, the space it moves over will be highlighted. to end the highlight, hit h again. 
		- cmd + h: will highlight from cursor to next period.
- hypothesis.is integration 

## todo
- [x] find tutorial
- [x] follow tutorial 
- [x] create github repo 
- [x] set up project files 
- [x] first commit 
- [x] install yarn
- [x] yarn create react-app my-chrome-extension --template typescript
- [x] create manifest.json in manifest folder
- [x] load unpacked in chrome 
- [x] create icon 
- [x] create 3 sizes of icon
	- [x] 16
	- [x] 24
	- [x] 32
- [x] add icon to project folder 
- [x] [[create button]]
- [x] on click of button, pop up dialog 
- [ ] dialog ui 
- [ ] figure out how to 
- [ ] add button inside dialog 

## log
- [x] [build a chrome extension w/ react and typescript](https://medium.com/swlh/how-to-build-a-chrome-extension-with-react-typescript-and-webpack-92e806ce2e16) #react #typescript
- [chrome product docs: create button ](https://developer.chrome.com/docs/extensions/reference/browserAction/)
***
figured out how to get tab url! 

	```js
	chrome.tabs.query({active:true})
	```
***

how do i properly assign a variable with a promise result 
	```js
	let myCurrentTab = '';
	chrome.tabs.query({active:true}).then(result => {
		console.log(result[0].url);
		myCurrentTab = result[0].url
	},result => {
		console.log('it didnt work')
	}
										 )
	```	
***
11:35PM printing active tab url on load of pop up is working 
the callback function used with addEventListener, when the function is declared, preface it with "async". async is either necessary to that or the fact that im using an await method in whats inside
***
12:26AM trying to figure out now why i get this error 
	`Uncaught (in promise) DOMException: The user aborted a request.	`

## reference
[opened](https://betterprogramming.pub/how-to-build-your-first-chrome-extension-8abdee9a4365)
[opened because the previous one said not in depth](https://hackernoon.com/step-by-step-guide-to-building-and-launching-your-chrome-extension-th3h3tx1)
[product docs](https://developer.chrome.com/docs/extensions/mv3/intro/)

```json
{  "name": "My extension",  ...  "browser_action": {    "default_icon": {                // optional      "16": "images/icon16.png",     // optional      "24": "images/icon24.png",     // optional      "32": "images/icon32.png"      // optional    },    "default_title": "Google Mail",  // optional, shown in tooltip    "default_popup": "popup.html"    // optional  },  ...}
```




- what is it for: user click chrome extension --> program gets active url --> program goes to zettel directory --> creates zettel md file with a template
- what it solves for: 
	- solves infinity tabs #pain-point
- if i dont do it, life will contine to look like this:
	- not remembering if ive read through a web article i see in google results and middle lcicing each link in its own tab. 
		- #habits #behavior this leads to procrastination and the bad kind of hyper focusing. 
		- can lead to web of distractions
- Until i get around to it...
	- stay on track
	- is what youre currently working towards bringing you a step further?
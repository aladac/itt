[![Gem Version](https://badge.fury.io/rb/itt.svg)](http://badge.fury.io/rb/itt)
[![Build Status](https://travis-ci.org/aladac/itt.svg?branch=master)](https://travis-ci.org/aladac/itt)
[![Code Climate](https://codeclimate.com/github/aladac/itt/badges/gpa.svg)](https://codeclimate.com/github/aladac/itt)
[![Downloads](http://ruby-gem-downloads-badge.herokuapp.com/itt?type=total)](https://rubygems.org/gems/itt)

![itt](https://github.com/aladac/itt/raw/master/doc/logo.png)
*iTerm2 tabs color and title util*


![Example](https://github.com/aladac/itt/raw/master/doc/example.gif)

## About
`itt` is a ruby script which allows setting the *title* and / or *background color* of the current tab in the popular Mac OS X terminal app [iTerm2](http://www.iterm2.com) using escape sequences.

## Install
```
gem install itt
```

## Usage
Just call `itt` without any arguments to see help

```
Sets the color and/or title of the current iTerm2 tab

USAGE:
itt [color] title

Examples:

	itt purple web-server
	itt p web-server
	itt orange rails-console

Clear title and color:

	itt clear

Colors: red, green, blue, orange, yellow, purple
```

## zsh
If you are using `zsh` you will need to add `export DISABLE_AUTO_TITLE=true` in your `.zshrc`

## Why?
I tend to color my tabs for easier reference. I prefer using the keyboard to clicking on stuff. There might be a way to do this using keyboard shortcuts but honestly I was too lazy to research it properly and lets face it - this is not a lot o work.

## TODO
- ~~Make itt a gem for easier install~~
- ~~Generate a nicer gif~~

## Credit
- [Change iTerm2 tab title from commandline (superuser.com)](http://superuser.com/questions/292652/change-iterm2-window-and-tab-titles-in-zsh)
- [iTerm2 escape codes (iterm2.com)](https://www.iterm2.com/documentation-escape-codes.html)
- [How to make a gif with ffmpeg (superuser.com)](http://superuser.com/questions/556029/how-do-i-convert-a-video-to-gif-using-ffmpeg-with-reasonable-quality)

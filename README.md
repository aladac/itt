[![Gem Version](https://badge.fury.io/rb/itt.svg)](http://badge.fury.io/rb/itt)
# itt - iTerm2 tabs color and title util
![Example](https://github.com/aladac/it/raw/master/doc/example.gif)

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

Colors: red, green, blue, orange, yellow, purple
```

## zsh
If you are using `zsh` you will need to add `export DISABLE_AUTO_TITLE=true` in your `.zshrc`

## Why?
I tend to color my tabs for easier reference. I prefer using the keyboard to clicking on stuff. There might be a way to do this using keyboard shortcuts but honestly I was too lazy to research it properly and lets face it - this is not a lot o work.

## TODO
- Make `itt` a gem for easier install
- Generate a nicer gif

# it - iTerm2 tabs color and title util
![Example](https://github.com/aladac/it/raw/master/doc/example.gif)

## Usage
Just call `it` without any arguments to see help

```
Sets the color and/or title of the current iTerm2 tab

USAGE:
it [color] title

Examples:

	it purple web-server
	it p web-server
	it orange rails-console

Colors: red, green, blue, orange, yellow, purple
```

## zsh
If you are using `zsh` you will need to add `export DISABLE_AUTO_TITLE=true` in your `.zshrc`

## Why?
I tend to color my tabs for easier reference. I prefer using the keyboard to clicking on stuff. There might be a way to do this using keyboard shortcuts but honestly I was too lazy to research it properly and lets face it - this is not a lot o work.

## TODO
- Make it a gem for easier install
- Generate a nicer gif

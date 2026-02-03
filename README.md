[![Gem Version](https://badge.fury.io/rb/itt.svg)](https://badge.fury.io/rb/itt)
[![Ruby](https://github.com/aladac/itt/actions/workflows/ruby.yml/badge.svg)](https://github.com/aladac/itt/actions/workflows/ruby.yml)

# itt

iTerm2 tab color and title utility for macOS.

![Example](https://github.com/aladac/itt/raw/master/doc/example.gif)

## Install

```sh
gem install itt
```

Works with the system Ruby on macOS Ventura, Sonoma, and Sequoia (Ruby 2.6+).

## Usage

```sh
itt [color] <title>
```

### Examples

```sh
itt purple web-server      # Set color and title
itt p web-server           # Short color name
itt orange rails-console
itt blue :whale: docker    # Emoji support
itt clear                  # Reset to default
```

### Colors

`red` `green` `blue` `orange` `yellow` `purple`

Colors match the default iTerm2 tab color palette.

## zsh

Add to `~/.zshrc`:

```sh
export DISABLE_AUTO_TITLE=true
```

## Emoji

Supports emoji codes via [rumoji](https://github.com/mwunsch/rumoji). Use codes like `:whale:` or `:grin:` in titles.

See the [emoji cheat sheet](https://emoji-cheat-sheet.com) for available codes.

## Credits

- [iTerm2 escape codes](https://iterm2.com/documentation-escape-codes.html)
- [Change iTerm2 tab title from command line](https://superuser.com/questions/292652/change-iterm2-window-and-tab-titles-in-zsh)

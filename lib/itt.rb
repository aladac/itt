require 'version'
require 'rumoji'
module ITT
  # Predefined colors, as close to the default iTerm2 tab colors as possible
  COLORS = {
    red: [214, 110, 107],
    green: [183, 213, 103],
    blue: [117, 165, 236],
    orange: [223, 157, 78],
    yellow: [167, 160, 96],
    purple: [140, 121, 149]
  }

  # Help info
  HELP = ''
  HELP << "Version: #{VERSION}\n\n"
  HELP << "Sets the color and/or title of the current iTerm2 tab\n\n"
  HELP << "USAGE:\nitt [color] title"
  HELP << "\nExamples:\n\n\titt purple web-server\n\titt p web-server"
  HELP << "\titt orange rails-console\n"
  HELP << "\titt blue :whale: docker\n\n"
  HELP << "Clear title and color:\n\n"
  HELP << "\titt clear\n\n"
  HELP << "Colors: #{COLORS.keys.map(&:to_s).join(', ')}\n\n"
  HELP << "Emoji cheat-sheet: http://www.emoji-cheat-sheet.com\n\n"

  # Escape sequence to set the title
  def set_title(title)
    "\e];#{Rumoji.decode(title)}\007"
  end

  # Escape sequences to set the color
  def set_color(red, green, blue)
    output = ''
    output << "\e]6;1;bg;red;brightness;#{red}\a"
    output << "\e]6;1;bg;green;brightness;#{green}\a"
    output << "\e]6;1;bg;blue;brightness;#{blue}\a"
  end

  # Escape sequences to clear the title and color
  def clear_color
    "\e]6;1;bg;*;default\a"
  end

  def clear_title
    "\e]1;\a"
  end
end

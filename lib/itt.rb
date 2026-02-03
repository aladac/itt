require "version"
require "rumoji"
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

  # ANSI formatting
  module Style
    RESET = "\e[0m"
    BOLD = "\e[1m"
    DIM = "\e[2m"
    # Foreground colors
    RED = "\e[38;2;214;110;107m"
    GREEN = "\e[38;2;183;213;103m"
    BLUE = "\e[38;2;117;165;236m"
    ORANGE = "\e[38;2;223;157;78m"
    YELLOW = "\e[38;2;167;160;96m"
    PURPLE = "\e[38;2;140;121;149m"
    CYAN = "\e[36m"
    WHITE = "\e[37m"
  end

  def self.styled_colors
    COLORS.keys.map do |c|
      color_code = Style.const_get(c.to_s.upcase)
      "#{color_code}#{c}#{Style::RESET}"
    end.join(Style::DIM + ", " + Style::RESET)
  end

  # Help info
  HELP = <<~HELP
    #{Style::BOLD}itt#{Style::RESET} #{Style::DIM}v#{VERSION}#{Style::RESET}
    #{Style::DIM}iTerm2 tab color and title utility#{Style::RESET}

    #{Style::BOLD}USAGE#{Style::RESET}
        itt #{Style::DIM}[color]#{Style::RESET} #{Style::CYAN}<title>#{Style::RESET}
        itt clear

    #{Style::BOLD}EXAMPLES#{Style::RESET}
        itt #{Style::PURPLE}purple#{Style::RESET} web-server     #{Style::DIM}# Set color and title#{Style::RESET}
        itt #{Style::PURPLE}p#{Style::RESET} web-server          #{Style::DIM}# Short color name#{Style::RESET}
        itt #{Style::ORANGE}orange#{Style::RESET} rails-console
        itt #{Style::BLUE}blue#{Style::RESET} :whale: docker    #{Style::DIM}# Emoji support#{Style::RESET}
        itt #{Style::RED}clear#{Style::RESET}                   #{Style::DIM}# Reset to default#{Style::RESET}

    #{Style::BOLD}COLORS#{Style::RESET}
        #{styled_colors}

    #{Style::DIM}Emoji codes: https://emoji-cheat-sheet.com#{Style::RESET}
  HELP

  module_function

  # Escape sequence to set the title
  def set_title(title)
    "\e];#{Rumoji.decode(title)}\007"
  end

  # Escape sequences to set the color
  def set_color(red, green, blue)
    output = ""
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

$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

require 'itt'

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 1.9.3'
  s.name        = 'itt'
  s.version     = ITT::VERSION
  s.date        = '2015-09-06'
  s.summary     = 'itt'
  s.description = 'iTerm2 tabs color and title util'
  s.authors     = ['Adam Ladachowski']
  s.email       = 'adam@saiden.pl'
  s.files       = ['bin/itt', 'lib/itt.rb']
  s.post_install_message = "If you are using zsh please add\n\nexport DISABLE_AUTO_TITLE=true\n\nTo .zshrc\n\n"
  s.executables << 'itt'
  s.homepage    =
    'https://github.com/aladac/itt'
  s.license = 'MIT'
end

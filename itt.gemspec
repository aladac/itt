$LOAD_PATH.unshift(File.expand_path('lib', __dir__))

require 'version'

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 1.9.3'
  s.name        = 'itt'
  s.version     = ITT::VERSION
  s.date        = '2015-09-06'
  s.summary     = 'itt'
  s.description = 'iTerm2 tabs color and title util'
  s.authors     = ['Adam Ladachowski']
  s.email       = 'adam@saiden.pl'
  s.files       = ['bin/itt', 'lib/itt.rb', 'lib/version.rb']
  s.add_runtime_dependency 'rumoji', '~> 0.4'
  s.post_install_message = "If you are using zsh please add\n\nexport DISABLE_AUTO_TITLE=true\n\nTo .zshrc\n\n"
  s.executables << 'itt'
  s.homepage =
    'https://github.com/aladac/itt'
  s.license = 'MIT'
end

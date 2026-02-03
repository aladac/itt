$LOAD_PATH.unshift(File.expand_path('lib', __dir__))

require 'version'

Gem::Specification.new do |s|
  # Ruby 2.6 is the system Ruby on macOS Ventura, Sonoma, and Sequoia
  s.required_ruby_version = '>= 2.6.0'

  s.name        = 'itt'
  s.version     = ITT::VERSION
  s.summary     = 'iTerm2 tab color and title utility'
  s.description = 'Set iTerm2 tab titles and background colors from the command line. ' \
                  'Supports all default iTerm2 colors and emoji in titles.'

  s.authors     = ['Adam Ladachowski']
  s.email       = 'adam@saiden.pl'
  s.homepage    = 'https://github.com/aladac/itt'
  s.license     = 'MIT'

  s.metadata    = {
    'homepage_uri'      => s.homepage,
    'source_code_uri'   => 'https://github.com/aladac/itt',
    'changelog_uri'     => 'https://github.com/aladac/itt/commits/master',
    'bug_tracker_uri'   => 'https://github.com/aladac/itt/issues',
    'rubygems_mfa_required' => 'true'
  }

  s.files       = ['bin/itt', 'lib/itt.rb', 'lib/version.rb']
  s.executables = ['itt']

  s.add_runtime_dependency 'rumoji', '~> 0.4'

  s.post_install_message = <<~MSG

    \e[1mitt\e[0m installed successfully!

    \e[2mIf using zsh, add to ~/.zshrc:\e[0m
        export DISABLE_AUTO_TITLE=true

  MSG
end

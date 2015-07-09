$:.push File.expand_path('../lib', __FILE__)

require 'azuma/version'

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'azuma'
  s.summary = 'Decide the order of Lightning Lalkers.'
  s.description = 'Decide the order of Lightning Lalkers.'

  s.version = Azuma::VERSION

  s.license = 'MIT'

  s.authors = ['Koichi ITO']
  s.email = 'koic.ito@gmail.com'
  s.homepage = 'http://github.com/koic/azuma'

  s.files = Dir[
    'README.md',
    'lib/**/*',
    'bin/azuma',
    'azuma.gemspec',
    'LICENSE'
  ]
  s.require_paths = ['lib']
  s.executables = `git ls-files -- bin/*`.split("\n").map {|f| File.basename(f) }

  s.required_ruby_version = '>= 2.0.0'
  s.license = 'MIT'

  s.add_development_dependency('rspec', '>= 3.0.0')
end

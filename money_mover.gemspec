$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'money_mover/version'

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 1.9.3'
  s.name        = 'money_mover'
  s.version     = MoneyMover::VERSION
  s.date        = '2016-07-21'
  s.summary     = "Money Mover"
  s.description = "Moves Money with ACH integrations (dwolla, stripe)"
  s.authors     = ["Daniel Errante"]
  s.email       = 'danoph@gmail.com'
  s.files       = ["lib/money_mover.rb"]
  s.homepage    = 'http://rubygems.org/gems/money_mover'
  s.license     = 'MIT'

  s.add_dependency('rest-client', '>= 2.0.0', '< 3.0')
  s.add_dependency('activemodel', '~> 5.0.0')

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  #s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end

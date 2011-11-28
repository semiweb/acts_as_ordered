# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "acts_as_ordered/version"

Gem::Specification.new do |s|
  s.name        = "acts_as_ordered"
  s.version     = ActsAsOrdered::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Semiweb"]
  s.email       = []
  s.homepage    = ""
  s.summary     = %q{Add ordered dynamic scope to models}
  s.description = %q{}

  s.rubyforge_project = "acts_as_ordered"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

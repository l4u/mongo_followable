# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongo_followable/version"

Gem::Specification.new do |s|
  s.name        = "mongo_followable"
  s.version     = MongoFollowable::VERSION
  s.authors     = ["Jie Fan"]
  s.email       = ["ustc.flyingfox@gmail.com"]
  s.homepage    = "https://github.com/lastomato/mongo_followable"
  s.summary     = %q{ adds following feature to mongoid }
  s.description = %q{ Mongo Followable adds following feature to mongoid }

  s.rubyforge_project = "mongo_followable"

  s.add_development_dependency('rspec', '~> 2.6')
  s.add_development_dependency('mongoid', '~> 2.0')
  s.add_development_dependency('mongo_mapper', '~> 0.9')
  s.add_development_dependency('bson_ext', '~> 1.4')
  s.add_development_dependency('database_cleaner', '~>0.6')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

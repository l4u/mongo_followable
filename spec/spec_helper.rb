require "rubygems"
require "bundler/setup"

require "database_cleaner"
require "rspec"

if rand > 0.5
  puts 'Mongoid'
  require 'mongoid'
  require File.expand_path("../../lib/mongo_followable", __FILE__)
  require File.expand_path("../mongoid/user", __FILE__)
  require File.expand_path("../mongoid/group", __FILE__)
  Mongoid.configure do |config|
    name = 'voteable_mongo_test'
    host = 'localhost'
    config.master = Mongo::Connection.new.db(name)
    config.autocreate_indexes = true
  end
else
  puts 'MongoMapper'
  require 'mongo_mapper'
  require File.expand_path("../../lib/mongo_followable", __FILE__)
  require File.expand_path("../mongo_mapper/user", __FILE__)
  require File.expand_path("../mongo_mapper/group", __FILE__)
  MongoMapper.database = 'voteable_mongo_test'
end

RSpec.configure do |c|
  c.before(:all)  { DatabaseCleaner.strategy = :truncation }
  c.before(:each) { DatabaseCleaner.clean }
end
require 'dm-core'
require 'dm-validations'

database_short_path = File::join File::dirname(__FILE__), '..', 'pinocchio.sqlite3'

database_path = File::expand_path database_short_path

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{database_path}")

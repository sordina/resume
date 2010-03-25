require 'dm-core'
require 'dm-validations'

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'sqlite3://pinocchio.sqlite3')

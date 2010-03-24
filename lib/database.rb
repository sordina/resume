require 'dm-core'

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'sqlite3://pinocchio.sqlite3')

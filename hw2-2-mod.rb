require "active_record"
# Adapter for the SQLite3
ActiveRecord::Base::establish_connection(:adapter => "sqlite3", :database => "testdb.sqlite")
# Define database schema , and create database " people "
class Script < ActiveRecord::Migration
	def self.up
		create_table :schedules do | t |
			t.string :event_name
			t.string :event_time
			t.string :event_situation
		end
	end
	def self.down
		drop_table :schedules
	end
end


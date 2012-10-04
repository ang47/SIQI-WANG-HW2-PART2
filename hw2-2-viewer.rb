require_relative "hw2-2-mod"
# Create the table that will be used in the database

class Schedule < ActiveRecord::Base
end

#class ScheduleView
	Script.up
	puts "Please input command(including new, show, done, out)"
	def new(name,time)
		Schedule.new(event_name: name, event_time: time.to_s, event_situation: "not yet").save
	end	
        def show
                puts "**********************"
		puts "NAME     TIME   SITUATION"
		events=Schedule.all
		events.each do |event|
		puts"#{event.event_name},#{event.event_time},#{event.event_situation}"
		end
		puts "**********************"
	end
	def done(name)
		@event=Schedule.find_by_event_name(name) #Schedule.where(["event_name = ?", name])
		@event.update_attribute(:event_situation, "done")	
	end
	
#end
	def out
		Script.down
		exit
	end

#sc=Schedule.new

require "pry"
require 'time' #=> true

class Event
	attr_accessor :start_date, :lenght, :title, :attendees

	def initialize(start_date, duration, titre, attendees)

	@start_date = Time.parse("2019-01-13 09:00")
	@lenght = duration.to_i
	@title = titre.to_s
	@attendees = []
	end

	def postpone_24h
		@start_date = @start_date + 60 * 60 * 24
    end

    def end_date
    	@start_date = @start_date + @lenght * 60
    end

    def is_past
    	if @start_date < Time.now
    		return true
    	else return false
    	end
    end

	def is_future
          !self.is_past
    end   	

    def is_soon
    	if Time.now - @start_date > (30 * 60)
    		return "L'événement commence bientôt"
    	else return "L'événement est déjà commencé"
    	end	
	end



end	
binding.pry
#puts start_date
p event
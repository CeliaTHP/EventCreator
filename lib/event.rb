require 'pry'
require 'time'

class Event
attr_accessor :start_date, :duration, :title, :attendees
@@all_events = []

def initialize(start_date, duration, title)
@start_date = Time.parse(start_date)
@duration = duration.to_i
@title = title.to_s
@@all_events << self
end

end

def postpone_24h
@start_date = (@start_date + 24*60*60)
end

def is_past?
@start_date < Time.now
end

def is_future?
! is_past?
end

def to_s
puts "Titre : #{@title}"
puts "Date de début : #{@start_date.strftime('%Y-%m-%d %H:%M')} "
puts " Durée : #{@duration} minutes"
puts "Invités :#{@attendees.join(',')}"
end

#binding.pry
#puts "end of file"

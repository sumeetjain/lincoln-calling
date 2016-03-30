#Model for Event
#The Event Schema includes artist_id:integer, venue_id:integer, minimum_age:string(for example: "21 and Older"), start_date_time:datetime, end_date_time:datetime
class Event < ActiveRecord::Base
  belongs_to(:venue)
  belongs_to(:artist)

  #returns the full word for day of week of event
  #example: Thursday
  def weekday
    self.start_date_time.strftime("%A")
  end
  #returns the abbreviated month and day number
  #example: Oct. 6 
  def monthday
    self.start_date_time.strftime("%b. %e")
  end
  #returns event's start time
  #example: 1:30pm OR 12:45am etc
  def starttime
    self.start_date_time.strftime("%l:%M%P")
  end
  #returns event's end time
  #example: 1:30pm OR 12:45am etc
  def endtime
    self.end_date_time.strftime("%l:%M%P")
  end
  def self.byday(weekday)
    events = []
    Event.all.each do |event|
      if event.weekday == weekday
        events << event
      end
    end
    return events
  end
end








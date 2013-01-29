class TimeTable < ActiveRecord::Base
  attr_accessible :fri, :mon, :sat, :shift_events_id, :sun, :thur, :tues, :wed
end

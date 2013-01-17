class ShiftEvent < ActiveRecord::Base
  attr_accessible :admin_email, :admin_name, :location, :organization, :title
end

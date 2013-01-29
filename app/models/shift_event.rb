class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end


class ShiftEvent < ActiveRecord::Base
  attr_accessible :admin_email, :admin_name, :location, :organization, :title
  validates_presence_of :admin_email, :admin_name, :title, message: "is required!"
  validates :admin_email, email: {message: "is not valid!"};
  
end

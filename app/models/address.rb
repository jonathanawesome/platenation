class Address < ActiveRecord::Base
  attr_accessible :line1, :line2, :city, :state, :zip, :profile_id
end

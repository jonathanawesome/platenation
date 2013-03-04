class Profile < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone, :user_id
end

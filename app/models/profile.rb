class Profile < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone, :user_id, :address_attributes
  has_one :address
  accepts_nested_attributes_for :address
end

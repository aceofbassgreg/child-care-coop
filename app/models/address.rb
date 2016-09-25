class Address < ActiveRecord::Base
  has_one :family
  has_one :venue
end
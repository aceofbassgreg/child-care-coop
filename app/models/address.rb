class Address < ActiveRecord::Base
  belongs_to :family
  belongs_to :venue
end
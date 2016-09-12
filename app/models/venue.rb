class Venue < ActiveRecord::Base
  belongs_to :family
  has_many :playdates
end

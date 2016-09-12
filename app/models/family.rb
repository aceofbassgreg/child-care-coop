class Family < ActiveRecord::Base
  has_and_belongs_to_many :playgroups
  has_many :care_requests
  has_many :children
  has_many :credits
  has_many :parents
  has_many :playdates, through: :playdate_family
  has_many :playdate_families

  enum preferred_contact_method: [:phone, :email]
end

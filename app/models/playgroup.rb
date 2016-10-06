class Playgroup < ActiveRecord::Base
  has_many :playdates
  has_many :families, through: :playgroup_families
  has_many :playgroup_families
  has_many :care_requests
  validates_uniqueness_of :name
end

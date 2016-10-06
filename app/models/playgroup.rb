class Playgroup < ActiveRecord::Base
  has_many :families, through: :playgroup_family
  has_many :playdates
  validates_uniqueness_of :name
end

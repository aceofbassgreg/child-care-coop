class Playgroup < ActiveRecord::Base
  has_many :families, through: :playgroup_family
  validates_uniqueness_of :name
end

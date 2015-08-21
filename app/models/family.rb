class Family < ActiveRecord::Base
  has_many :children
  has_many :parents

  has_many :playdates, through: :playdate_family
  has_many :playdate_families

end
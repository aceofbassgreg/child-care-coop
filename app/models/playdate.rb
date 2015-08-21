class Playdate < ActiveRecord::Base
  has_one :venue
  has_one :host_id #this is a family id

  has_many :playdate_families
  has_many :families, through: :playdate_families

end
class Playdate < ActiveRecord::Base
  belongs_to :venue
  belongs_to :playgroup

  has_many :playdate_families
  has_many :families, through: :playdate_families
end

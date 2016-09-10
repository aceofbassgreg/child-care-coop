class Playdate < ActiveRecord::Base
  belongs_to :venue

  has_many :playdate_families
  has_many :families, through: :playdate_families
end

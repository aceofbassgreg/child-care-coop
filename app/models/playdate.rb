class Playdate < ActiveRecord::Base
  belongs_to :playgroup
  belongs_to :venue

  has_one :care_request
  has_many :playdate_families
  has_many :families, through: :playdate_families
end

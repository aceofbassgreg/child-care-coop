class Playgroup < ActiveRecord::Base
  has_and_belongs_to_many :families
end
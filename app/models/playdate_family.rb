class PlaydateFamily < ActiveRecord::Base
  belongs_to :family 
  belongs_to :playdate

  has_many :invites
end

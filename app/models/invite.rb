class Invite < ActiveRecord::Base
  belongs_to :playdate_family
  belongs_to :sender, :class_name => 'Family'
  belongs_to :recipient, :class_name => 'Family'
 end

class Family < ActiveRecord::Base
  belongs_to :address

  has_many :playgroups, through: :playgroup_family
  
  has_many :care_requests
  has_many :children
  has_many :credits
  has_many :guardians
  has_many :playdates, through: :playdate_family
  has_many :playdate_families

  has_many :invitations, :class_name => "Invite", :foreign_key => 'recipient_id'
  has_many :sent_invites, :class_name => "Invite", :foreign_key => 'sender_id'

  enum preferred_contact_method: [:phone, :email]
end

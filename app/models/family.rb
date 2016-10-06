class Family < ActiveRecord::Base
  belongs_to :address

  has_many :care_requests, foreign_key: :requesting_family_id
  has_many :hosted_care_requests, class_name: "CareRequest", foreign_key: :hosting_family_id
  has_many :children
  has_many :credits
  has_many :guardians
  has_many :invitations, :class_name => "Invite", :foreign_key => 'recipient_id'
  has_many :playdates, through: :playdate_families
  has_many :playdate_families
  has_many :playgroups, through: :playgroup_families
  has_many :playgroup_families
  has_many :sent_invites, :class_name => "Invite", :foreign_key => 'sender_id'

  enum preferred_contact_method: [:phone, :email]
end

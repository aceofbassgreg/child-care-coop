class CareRequest < ActiveRecord::Base
  belongs_to :host_family, class_name: 'Family', foreign_key: :host_family_id
  belongs_to :requesting_family, class_name: 'Family', foreign_key: :requesting_family_id
  belongs_to :playdate
  belongs_to :playgroup
end

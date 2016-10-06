class CareRequest < ActiveRecord::Base
  belongs_to :family, foreign_key: :requesting_family_id
  belongs_to :family, foreign_key: :hosting_family_id
  belongs_to :playdate
  belongs_to :playgroup
end

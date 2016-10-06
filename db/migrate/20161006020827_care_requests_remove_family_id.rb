class CareRequestsRemoveFamilyId < ActiveRecord::Migration
  def change
    remove_column :care_requests, :family_id
  end
end

class CareRequestsTableChangeHostingFamilyIdToHostFamilyId < ActiveRecord::Migration
  def change
    rename_column :care_requests, :hosting_family_id, :host_family_id
  end
end

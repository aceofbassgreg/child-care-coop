class FleshesOutCareRequestsTableWithMoreDetails < ActiveRecord::Migration
  def change
    add_column :care_requests, :requesting_family_id, :integer
    add_column :care_requests, :hosting_family_id, :integer
    add_column :care_requests, :accepted_time, :time
    add_column :care_requests, :cancelled, :boolean
    add_column :care_requests, :completed, :boolean
    add_column :care_requests, :playgroup_id, :integer
  end
end

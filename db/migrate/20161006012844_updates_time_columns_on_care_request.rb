class UpdatesTimeColumnsOnCareRequest < ActiveRecord::Migration
  def change
    rename_column :care_requests, :time, :requested_start_time
    add_column :care_requests, :requested_end_time, :time
    add_column :care_requests, :accepted_start_time, :time
    add_column :care_requests, :accepted_end_time, :time
  end
end

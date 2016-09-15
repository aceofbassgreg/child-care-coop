class DeleteDateFromCareRequests < ActiveRecord::Migration
  def change
    remove_column :care_requests, :date
  end
end

class CareRequestsNowHaveOnePlaydate < ActiveRecord::Migration
  def change
    add_column :care_requests, :playdate_id, :integer
  end
end

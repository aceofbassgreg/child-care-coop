class AddsFamilyIdToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :family_id, :integer
  end
end

class RemoveFamilyIdFromVenue < ActiveRecord::Migration
  def change
    remove_column :venues, :family_id
  end
end

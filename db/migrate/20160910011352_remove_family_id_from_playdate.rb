class RemoveFamilyIdFromPlaydate < ActiveRecord::Migration
  def change
    remove_column :playdates, :family_id
  end
end

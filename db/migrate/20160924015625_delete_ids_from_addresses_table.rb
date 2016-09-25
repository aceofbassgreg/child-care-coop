class DeleteIdsFromAddressesTable < ActiveRecord::Migration
  def change
    remove_column :addresses, :family_id
    remove_column :addresses, :venue_id
  end
end

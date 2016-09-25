class AddAddressIdToFamiliesTable < ActiveRecord::Migration
  def change
    add_column :families, :address_id, :integer
  end
end

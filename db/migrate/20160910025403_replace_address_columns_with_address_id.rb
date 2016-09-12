class ReplaceAddressColumnsWithAddressId < ActiveRecord::Migration
  def change
    remove_column :venues, :address
    remove_column :venues, :city
    remove_column :venues, :state
    remove_column :venues, :zip
    remove_column :parents, :street_address
    remove_column :parents, :city
    remove_column :parents, :state
    remove_column :parents, :zip

    add_column :venues, :address_id, :integer
    add_column :parents, :address_id, :integer
  end
end

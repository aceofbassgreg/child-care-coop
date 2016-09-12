class CreateAddressesTable < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string "street_address"
      t.string "city"
      t.string "state"
      t.integer "zip"
      t.integer "family_id"
      t.integer "venue_id"
    end
  end
end

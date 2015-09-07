class CreatePlaydateFamilies < ActiveRecord::Migration
  def change
    create_table :playdate_families do |t|
      t.integer :playdate_id
      t.integer :family_id
    end 
  end
end

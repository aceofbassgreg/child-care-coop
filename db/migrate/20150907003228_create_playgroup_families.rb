class CreatePlaygroupFamilies < ActiveRecord::Migration
  def change
    create_table :playgroup_families do |t| 
      t.integer :playgroup_id
      t.integer :family_id
    end
  end
end

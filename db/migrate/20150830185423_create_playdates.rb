class CreatePlaydates < ActiveRecord::Migration
  def change
    create_table :playdates do |t|
      t.date    :date
      t.time    :time
      t.integer :host_family_id 
      t.integer :playgroup_id  
      t.integer :venue_id
    end
  end
end

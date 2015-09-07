class CreateCareRequests < ActiveRecord::Migration
  def change

    create_table :care_requests do |t|
      t.integer :family_id
      t.integer :requested_hours
      t.date    :date
      t.time    :time
      t.boolean :is_time_flexible
      t.integer :flex_hours
    end
  end
end

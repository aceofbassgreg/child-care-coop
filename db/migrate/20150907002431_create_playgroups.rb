class CreatePlaygroups < ActiveRecord::Migration
  def change
    create_table :playgroups do |t|
      t.string :name
      t.boolean :is_recurring
      t.date    :recurring_date
    end
  end
end

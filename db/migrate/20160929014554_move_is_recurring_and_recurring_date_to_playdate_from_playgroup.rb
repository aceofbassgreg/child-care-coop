class MoveIsRecurringAndRecurringDateToPlaydateFromPlaygroup < ActiveRecord::Migration
  def change
    remove_column :playgroups, :is_recurring
    add_column :playdates, :is_recurring, :boolean

    remove_column :playgroups, :recurring_date
    add_column :playdates, :recurring_interval, :string
  end
end

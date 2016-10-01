class DeleteDateColumnFromPlaydates < ActiveRecord::Migration
  def change
    remove_column :playdates, :date
  end
end

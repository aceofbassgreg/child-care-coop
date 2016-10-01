class PlaydateNowHasStartTimeAndEndTime < ActiveRecord::Migration
  def change
    rename_column :playdates, :time, :start_time
    add_column :playdates, :end_time, :time
  end
end

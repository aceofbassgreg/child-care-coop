class AllTablesAddCreatedAtUpdatedAt < ActiveRecord::Migration
  def change
    [:addresses, :care_requests, :children, :credits, :families, 
    :guardians, :playdate_families, :playdates, :playgroup_families,
    :playgroups, :venues].each do |table| 

      add_timestamps(table)
    end
  end
end

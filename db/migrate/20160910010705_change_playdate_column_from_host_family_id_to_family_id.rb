class ChangePlaydateColumnFromHostFamilyIdToFamilyId < ActiveRecord::Migration
  def change
    rename_column :playdates, :host_family_id, :family_id
  end
end

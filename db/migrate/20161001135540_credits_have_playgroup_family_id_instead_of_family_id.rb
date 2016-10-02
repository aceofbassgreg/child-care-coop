class CreditsHavePlaygroupFamilyIdInsteadOfFamilyId < ActiveRecord::Migration
  def change
    rename_column :credits, :family_id, :playgroup_family_id
  end
end

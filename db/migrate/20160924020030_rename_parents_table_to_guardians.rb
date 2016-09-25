class RenameParentsTableToGuardians < ActiveRecord::Migration
  def change
    rename_table :parents, :guardians
  end
end

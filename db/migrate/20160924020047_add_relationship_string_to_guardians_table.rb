class AddRelationshipStringToGuardiansTable < ActiveRecord::Migration
  def change
    add_column :guardians, :relationship_to_child, :string
  end
end

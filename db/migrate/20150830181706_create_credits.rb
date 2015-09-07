class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.integer :family_id
    end
  end
end

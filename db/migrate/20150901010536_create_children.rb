class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :family_id

      t.string  :first_name
      t.string  :last_name
      t.date    :birthday
      t.boolean :potty_trained
      t.string  :potty_training_notes
      t.boolean :allergies
      t.string  :allergy_notes
    end

  end
end

class CreateParents < ActiveRecord::Migration
  
  def change

    create_table :parents do |t|
      t.integer :family_id

      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
    end

  end
end

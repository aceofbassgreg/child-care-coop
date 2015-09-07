class CreateFamilies < ActiveRecord::Migration
  def change

    create_table :families do |t|
      t.string :name
    end

  end
end

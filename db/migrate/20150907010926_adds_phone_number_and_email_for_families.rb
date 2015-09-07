class AddsPhoneNumberAndEmailForFamilies < ActiveRecord::Migration
  def change
    add_column :families, :phone_number, :string
    add_column :families, :email, :string
    add_column :families, :preferred_contact_method, :integer
  end
end

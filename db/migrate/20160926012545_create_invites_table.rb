class CreateInvitesTable < ActiveRecord::Migration
  def change
   create_table :invites do |t|
     t.string  :email 
     t.integer :playdate_family_id
     t.integer :sender_id
     t.integer :recipient_id
     t.boolean :accepted
     t.string  :token
     t.timestamps
    end
   end 
end

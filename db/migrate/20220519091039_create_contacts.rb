class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.belongs_to :user, index: true
       t.string :address
       t.string :phone_number 
       t.string :email

      t.timestamps
    end
  end
end

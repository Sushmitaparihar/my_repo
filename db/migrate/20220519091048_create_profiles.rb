class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true
      t.string :bio
      t.string :about
      t.integer :age
      t.date :birthdate

      t.timestamps
    end
  end
end

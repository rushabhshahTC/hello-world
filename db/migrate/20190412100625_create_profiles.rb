class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :address
      t.string :city
      t.date :dob
      t.string :first_name
      t.integer :gender
      t.decimal :handicap, precision: 4, scale: 2
      t.boolean :handicap_certified
      t.boolean :is_professional
      t.string :last_name
      t.string :licence_number
      t.string :phone_number
      t.string :role
      t.string :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

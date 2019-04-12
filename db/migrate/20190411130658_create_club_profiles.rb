class CreateClubProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :club_profiles do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :email
      t.string :phone_number

      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end

class CreateDriverProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :driver_profiles do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :telephone
      t.string :image
      t.string :driver_string_id

      t.timestamps
    end
  end
end

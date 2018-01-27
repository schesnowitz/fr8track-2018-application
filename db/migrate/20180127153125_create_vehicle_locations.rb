class CreateVehicleLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_locations do |t|
      t.string :location_id
      t.string :located_at
      t.float :latitude
      t.float :longitude
      t.float :bearing
      t.float :engine_hours
      t.integer :driver_id
      t.float :fuel
      t.float :odometer
      t.float :speed
      t.string :location_description
      t.string :movement_type
      t.string :driver_first_name
      t.string :driver_last_name
      t.string :driver_username
      t.string :driver_company_id
      t.string :driver_status
      t.string :driver_role
      t.integer :edl_id
      t.string :edl_identifier
      t.string :edl_model
      t.date :date
      t.integer :driver_profile_id, index: true

      t.timestamps
    end
  end
end

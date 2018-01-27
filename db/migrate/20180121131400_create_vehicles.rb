class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.integer :api_vehicle_company_id
      t.integer :api_id
      t.string :number
      t.string :status
      t.string :ifta
      t.string :vin
      t.string :make
      t.string :model
      t.string :year
      t.string :license_plate_state
      t.string :license_plate_number
      t.boolean :metric_units
      t.string :fuel_type
      t.string :prevent_auto_odometer_entry
      t.integer :edl_device_id
      t.string :edl_identifier
      t.string :edl_model
      t.integer :api_driver_id
      t.string :api_first_name
      t.string :api_last_name
      t.string :api_username
      t.string :api_email
      t.string :driver_internal_id
      t.string :api_status
      t.string :api_role

      t.timestamps
    end
  end
end

class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :kt_vehicle_id
      t.string :vin
      t.string :year
      t.string :make
      t.string :model
      t.string :fuel_type
      t.string :plate_state
      t.string :plate_number
      t.string :odometer_units
      t.string :edl_sn

      t.timestamps
    end
  end
end

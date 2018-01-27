{
  "vehicle_locations": [
    {
      "vehicle_location": {
        "id": "af5b6e0d-c442-414c-88d2-d95e5cb7affe",
        "located_at": "2016-05-24T06:01:11Z",

        "type": "vehicle_moving",
        "description": "6.2 mi N of San Francisco, CA",

        "driver": {

          "first_name": "John",
          "last_name": "Doe",
          "username": "john.doe",
          "email": null,
          "driver_company_id": "kt002",
          "status": "active",
          "role": "driver"
        },
        "eld_device": {
          "id": 7224,
          "identifier": "00012835",
          "model": "lbb-2"
        }

rails g scaffold VehicleLocation location_id located_at latitude:float longitude:float bearing:float engine_hours:float driver_id:integer fuel:float odometer:float speed:float location_description movement_type driver_first_name driver_last_name driver_username driver_company_id driver_status driver_role edl_id:integer edl_identifier edl_model          


User.where(["name = ? and email = ?", "Joe", "joe@example.com"])

Client.where(locked: true)
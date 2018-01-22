# driver_1 = Driver.create!(
#   email: 'jlmulet@30gmail.com',
#   password: 'password',
#   password_confirmation: 'password'
# )
# puts driver_1.inspect
# driver_2 = Driver.create!(
#   email: 'lofortetrucking@gmail.com',
#   password: 'password',
#   password_confirmation: 'password'
# )
# puts driver_2.inspect

driver_profile_1 = DriverProfile.find_or_initialize_by(id: 1)
  driver_profile_1.email = 'email1@email.com'
  driver_profile_1.first_name = 'Antonio'
  driver_profile_1.last_name = 'Rodriguez'
  driver_profile_1.driver_string_id = '40268793320186691c34cdb5bb1d1234'
  driver_profile_1.save
puts driver_profile_1.inspect

driver_profile_2 = DriverProfile.find_or_initialize_by(id: 2)
  driver_profile_2.email = 'email2@email.com'
  driver_profile_2.first_name = 'Yoiner'
  driver_profile_2.last_name = 'Loforte'
  driver_profile_2.driver_string_id = '40268793320186691c34cdb5bb1d3456'
  driver_profile_2.save
puts driver_profile_2.inspect

driver_profile_3 = DriverProfile.find_or_initialize_by(id: 3)
  driver_profile_3.email = 'email3@email.com'
  driver_profile_3.first_name = 'Juan'
  driver_profile_3.last_name = 'Mulet'
  driver_profile_3.driver_string_id = '40268793320186691c34cdb5bb1d4567'
  driver_profile_3.save
puts driver_profile_3.inspect


app_setting = AppSetting.create!(
  hidden_sidebar: false,
  theme_color: '2'
)

app_setting = AppSetting.find_or_initialize_by(id: 1)

app_setting.save 



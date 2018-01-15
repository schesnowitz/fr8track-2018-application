app_setting = AppSetting.create!(
  hidden_sidebar: true
)

app_setting = AppSetting.find_or_initialize_by(id: 1)

app_setting.save 


# 1..10.each do |num|




# theme_color = []                                                         
# (1..10).each do |num|                                                       
#   theme_color <<  ThemeColor.create!(color: "#{num}", app_setting_id: 1)                
# end       
# puts theme_color.inspect 
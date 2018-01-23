class ApplicationController < ActionController::Base
  before_action :app_setting

  def app_setting
    @app_setting = AppSetting.find(1)
  end

  def the_fallback
    redirect_back(fallback_location: root_path)
  end 

  def vehicles
    @url = 'https://api.keeptruckin.com/v1'
    @headers = { 'content-type': 'application/json', 'X-Api-Key': ENV["KEEP_TRUCKIN_KEY"] } 
    @all_vehicles = HTTParty.get("#{@url}/vehicles", headers: @headers)
    @vehicles_response = JSON.parse(@all_vehicles.body, object_class: OpenStruct)
  end
end

class ApplicationController < ActionController::Base
  before_action :app_setting
  def app_setting
    @app_setting = AppSetting.find(1)
  end
end

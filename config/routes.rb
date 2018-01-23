Rails.application.routes.draw do

require 'sidekiq/web'
require 'sidekiq/cron/web'
  

get 'vehicles/:id/api_update_vehicle', to: 'vehicles#api_update_vehicle'
  resources :vehicles
  devise_for :drivers, path: 'drivers', controllers: { registrations: 'drivers/registrations'} 
  resources :driver_profiles do
    resources :drivers
  end


  devise_for :admins, path: 'admins', controllers: { registrations: 'adnins/registrations'}
  resources :kt_reports
  resources :kt_reports
  resources :app_settings
  root 'pages#index' 


  get 'edit_theme', to: 'app_settings#edit_theme'

  mount Sidekiq::Web => '/sidekiq'

end

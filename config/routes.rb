Rails.application.routes.draw do


  devise_for :users
  resources :broker_profiles
  resources :shipments
  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  
  resources :vehicles
  resources :vehicle_locations

  devise_for :drivers, path: 'drivers', controllers: { registrations: 'drivers/registrations'} 
  resources :driver_profiles do
    resources :drivers
  end

  devise_for :admins, path: 'admins', controllers: { registrations: 'adnins/registrations'}

  resources :app_settings

  root 'pages#index' 
  get 'edit_theme', to: 'app_settings#edit_theme'

  mount Sidekiq::Web => '/sidekiq'

end

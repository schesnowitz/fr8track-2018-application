Rails.application.routes.draw do


  devise_for :users

  resources :app_settings

  root 'pages#index' 
  get 'edit_theme', to: 'app_settings#edit_theme'
  require 'sidekiq/web'
  require 'sidekiq/cron/web'

  mount Sidekiq::Web => '/sidekiq'

end

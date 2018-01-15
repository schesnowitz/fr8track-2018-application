Rails.application.routes.draw do

  get 'pages/index'

  resources :app_settings
  root 'pages#index' 


  get 'edit_theme', to: 'app_settings#edit_theme'
end

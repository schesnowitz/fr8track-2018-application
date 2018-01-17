Rails.application.routes.draw do

  resources :kt_reports
  resources :kt_reports
  resources :app_settings
  root 'pages#index' 


  get 'edit_theme', to: 'app_settings#edit_theme'
end

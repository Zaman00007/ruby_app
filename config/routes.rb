Rails.application.routes.draw do
  resources :patient_records
  devise_for :admins, skip: [:registrations]
  devise_for :users
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "admin" => "admin#index"
  get '/admin/registration_logs', to: 'admin#registration_logs'
  get "courses" =>"courses#index"
  # Defines the root path route ("/")
  root "patient_records#index"
end

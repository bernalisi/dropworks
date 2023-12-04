Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :venues do
    member do
      patch :favorite
    end
    resources :bookings, only: %i[new create]
      member do
      post 'create_opening_hour'
      patch 'update_opening_hour/:opening_hour_id', to: 'venues#update_opening_hour', as: :update_opening_hour
      get 'show_opening_hours'
      end
  end

  resources :bookings, only: %i[show edit update destroy] do
    resources :reviews,  only: %i[new create edit update]
  end

  get "/dashboard", to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :venues do
    member do
      patch :favorite
    end
    resources :bookings, only: %i[new create show edit update destroy]
    

  end

  resources :bookings, only: [] do
    resources :reviews,  only: %i[new create]
  end



  get "/dashboard", to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end

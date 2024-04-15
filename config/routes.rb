Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # resource :traveller, except: [:index] do
  #   resources :booking, except: [:index]
  # end

  # resource :host, except: [:index] do
  #   resources :booking, except: [:index]
  # end


  resources :experiences, only: [:show, :index]

  # # Nested routes for hosts to manage experiences
  # resources :host, except: [:index] do
  #   resources :experiences, only: [:new, :create, :edit, :update, :destroy]
  # end


  # Defines the root path route ("/")
  root to: "experiences#index"
end

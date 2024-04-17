Rails.application.routes.draw do
  devise_for :travellers
  devise_for :hosts

  # devise_for :hosts, controllers: { sessions: 'hosts/sessions', registrations: 'hosts/registrations' }

  # devise_for :travellers, controllers: { sessions: 'travellers/sessions', registrations: 'travellers/registrations' }



  devise_scope :host do
    get '/hosts/sign_out' => 'devise/sessions#destroy'
    get 'profile', to: 'hosts/sessions#show'

  end

  devise_scope :traveller do
    get '/travellers/sign_out' => 'devise/sessions#destroy'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :bookings

  resources :travellers

  resources :experiences

  # # Nested routes for hosts to manage experiences
  resources :hosts, except: [:index] do
    resources :experiences, except: [:destroy]
  end



  # Defines the root path route ("/")
  root to: "pages#show"
end

Rails.application.routes.draw do
  devise_for :hosts
  devise_for :travellers

  devise_scope :host do
    get '/hosts/sign_out' => 'devise/sessions#destroy'
  end

  devise_scope :traveller do
    get '/travellers/sign_out' => 'devise/sessions#destroy'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :booking

  resource :traveller, except: [:index] do
    resources :booking, except: [:index]
  end


  resources :experiences, only: [:show, :index]

  # # Nested routes for hosts to manage experiences
  resources :host, except: [:index] do
    resources :experiences, only: [:new, :create, :edit, :update]
  end


  # Defines the root path route ("/")
  root to: "experiences#index"
end

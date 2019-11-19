Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lessons do
    resources :bookings
  end

  get '/bookings', to: 'bookings#index'

  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'trips#index'
  get '/why_this_trip_needs_to_happen' => "posts#about"
  resources :posts
  resources :trips 
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

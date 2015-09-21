PinBoard1::Application.routes.draw do
  resources :users
  resources :pins
  resources :sessions, only: [:new, :create, :destroy]

  get '/signup' => 'users#new'
  get '/signin' => 'sessions#new'
  delete '/signout' => 'sessions#destroy'
  root 'pins#index'
  get "/about" => 'home#about'

end

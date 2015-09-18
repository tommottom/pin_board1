PinBoard1::Application.routes.draw do
  resources :pins


  get '/signup' => 'users#new'
  root 'pins#index'
  get "/about" => 'home#about'

end

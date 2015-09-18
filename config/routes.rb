PinBoard1::Application.routes.draw do
  resources :pins


  #root 'home#top'
  root 'pins#index'
  get "/about" => 'home#about'

end

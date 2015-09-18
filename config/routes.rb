PinBoard1::Application.routes.draw do
  resources :pins

  
  root 'home#top'
  get "/about" => 'home#about'

end

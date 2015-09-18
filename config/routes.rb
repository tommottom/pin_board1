PinBoard1::Application.routes.draw do
  get 'pins/new' => 'pins#new'
  post '/pins' => 'pins#create'
  get '/pins' => 'pins#index'
  get '/pins/:id' => 'pins#show', as: 'pin'
  patch '/pins/:id' => 'pins#update', as: 'update_pin'
  get '/pins/:id/edit' => 'pins#edit', as: 'edit_pin'
  delete '/pins/:id' => 'pins#destroy', as: 'destroy_pin'

  root 'home#top'
  get "/about" => 'home#about'

end

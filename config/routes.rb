Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index', to: 'pokemons#index'
  get '/show/:id', to: 'pokemons#show'

  post '/pokemon', to: 'pokemons#create'

  patch '/pokemon/:id', to: 'pokemons#update'

  delete '/pokemon/:id', to: 'pokemons#destroy'
end

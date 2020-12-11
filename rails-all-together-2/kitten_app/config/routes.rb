Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :kittens
  get '/people', to: "people#index", as: "people"
  get '/people/:id', to: "people#show", as: "person"
  get '/playdates/new', to: "playdates#new", as: "new_playdate"
  post '/playdates', to: "playdates#create"

  get '/playdates/:id/edit', to: "playdates#edit", as: "edit_playdate"
  patch '/playdates/:id', to: "playdates#update"
  get '/playdates/:id', to: "playdates#show", as: "playdate"
  delete '/playdates/:id', to: "playdates#destroy", as: "cancel_playdate"


  # get '/kittens', to: "kittens#index", as: "kittens"
   
  # # we need a form for the user to fill
  
  # #  create a new kitten requires two actions 
  # # therefore we need two routes set up 
  # get 'kittens/new', to: "kittens#new"

  # get '/kittens/:id', to: "kittens#show", as: 'kitten'

  # post '/kittens', to: "kittens#create"
  # new is allowing you to create a form and show it 
  # and create is taking that information and submitting it to database
end

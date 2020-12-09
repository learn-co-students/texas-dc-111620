Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :kittens, only: [:create, :index, :show]

  get '/kittens', to: "kittens#index"
  get '/kittens/:id', to: "kittens#show"
end

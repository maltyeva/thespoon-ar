Rails.application.routes.draw do

  #CRUD

  #READ ALL RESTAURANTS
  # # VERB '/path', to: "controller_name#controller_action", as: internal_name
  # get 'restaurants', to: "restaurants#index"

  # #READ ONE RESTAURANT
  # # restaurants/56
  # get 'restaurants/:id', to: "restaurants#show"

  # #CREATE ONE RESTAURANT
  # # get the form
  # get 'restaurants/new', to: "restaurants#new"
  # # submit the form
  # post 'restaurants', to: "restaurants#create"

  # #UPDATE ONE RESTAURANT
  # # restaurants/56/edit
  # #get the form with the restaurant details
  # get 'restaurants/:id/edit', to: "restaurants#edit"
  # #submit the form (patch or put)
  # patch 'restaurants/:id', to: "restaurants#update"

  # #DESTROY RESTAURANT
  # # restaurants/56
  # delete 'restaurants/:id', to: "restaurants#destroy"

  resources :restaurants

  root to: "restaurants#index"
end

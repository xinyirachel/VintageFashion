Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "/restricted", to: "pages#restricted"
  get "/listings", to: "listings#index", as: "listings"
  post "listings", to: "listings#create"
  get "listings/new", to: "listings#new", as: "new_listing"
  get "listings/:id", to: "listings#show", as: "listing"
  put "listings/:id", to: "listings#update"
  patch "listings/:id", to: "listings#update"
  delete "listings/:id", to: "listings#destroy", as: "delete_listing"
  get "listings/:id/edit", to: "listings#edit", as: "edit_listing"



end

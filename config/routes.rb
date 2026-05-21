Rails.application.routes.draw do
  get "entries/new"
  get "entries/create"
  get "places/index"
  get "places/show"
  get "places/new"
  get "places/create"
  resources :places
  resources :entries

  root "places#index"
end
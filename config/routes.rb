Rails.application.routes.draw do
  resources :places
  resources :entries

  root "places#index"
end
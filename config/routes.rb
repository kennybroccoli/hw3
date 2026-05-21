Rails.application.routes.draw do
  resources :places, only: [:index, :show, :new, :create] do
    resources :entries, only: [:new, :create]
  end

  root "places#index"
end
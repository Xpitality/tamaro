Rails.application.routes.draw do


  resources :pitches, only: :index do
    post :import, on: :collection
  end

  resources :zones, only: :index
  resources :season_prices, only: :update

  devise_for :users
  root to: "pitches#index"
end

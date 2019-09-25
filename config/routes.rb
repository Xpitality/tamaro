Rails.application.routes.draw do

  root to: "pitches#index"

  resources :zone_translations
  resources :pitches, only: :index do
    get :export, on: :collection
    post :import, on: :collection
  end

  resources :zones, only: :index
  resources :season_prices, only: :update

  devise_for :users

end

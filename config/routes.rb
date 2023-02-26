# frozen_string_literal: true

Rails.application.routes.draw do
  resources :rides
  resources :parking_slots
  resources :categories
  resources :bookings
  resources :drivers
  resources :vehicles
  resources :passengers

  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

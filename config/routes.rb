Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'assign_role', to: 'home#assign_role'
  
  root 'home#index'
  
  delete 'users/sign_out', to: 'users/sessions#destroy'
  
  resources :orders

  namespace :traveler do 
    resources :journeys
  end

  get 'journey_list',to: 'traveler/journeys#journey_list'


end

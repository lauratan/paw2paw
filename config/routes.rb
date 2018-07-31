Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

  resources :sitters, only: [:index, :show, :new, :create, :update, :edit] do 
    resources :bookings, only: [:new, :show, :create, :update, :edit] do
      resources :availabilities, only: [:delete]
    end
    resources :availabilities, only: [:create]
  end 

  

  resources :users, only: [:new, :create]

  resources :sessions, path: 'login', only: [:new, :create]
  resources :sessions, path: 'logout', only: [:destroy]
  
end

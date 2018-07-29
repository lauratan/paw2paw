Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#index'
  # root to: 'products#index'

  resources :sitters, only: [:index, :show, :new, :create, :update] do
  end
end

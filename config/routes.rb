Rails.application.routes.draw do
  get 'doses/create'

  get 'doses/new'

  get 'doses/destroy'

  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:create, :new]
  end

  resources :doses, only: [:destroy]
  resources :ingredients, only: [:show]

  root "cocktails#index"

end

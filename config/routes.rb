Rails.application.routes.draw do
  resources :cocktails do
    # nested resources for :new, :create => restaurant id is needed to create a review
    resources :doses, only: [ :name ]


  end

  resources :doses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

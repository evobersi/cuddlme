Cuddlr::Application.routes.draw do

  root 'users#new'
  resources :dogs, only: [:index, :create, :show, :new, :edit]
  resources :users do
    resources :dogs, only: [:index, :show ], controller: 'users/dogs'
  end
  resource :session, only: [:new, :create, :destroy]
  resources :parks do
    resources :users, only: [:create], controller: 'parks/users'
  end
end

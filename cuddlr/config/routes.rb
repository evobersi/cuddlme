Cuddlr::Application.routes.draw do
  resources :dogs, only: [:index, :create, :show, :new]
  resources :users, except: [:index] do
    resources :dogs, only: [:index], controller: 'users/dogs'
  end
  resource :session, only: [:new, :create, :destroy]
  resources :parks 
end

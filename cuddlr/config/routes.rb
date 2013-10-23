Cuddlr::Application.routes.draw do
  resources :dogs, only: [:index, :create, :show, :new]
  resources :users, except: [:index]
  resources :session, only: [:new, :create, :destroy]
  resources :parks 
end

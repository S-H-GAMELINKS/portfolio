Rails.application.routes.draw do
  resources :topics, :only => [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :photos
  devise_for :users
  resources :top, :only => [:index]
  root "top#index"
  resources :users, :only => [:show, :index, :edit, :update]
  resources :recruitments do
    resources :comments, :only => [:create, :destroy]
    
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

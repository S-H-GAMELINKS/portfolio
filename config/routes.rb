Rails.application.routes.draw do
  resources :photos
  get 'users/show'
  get 'users/index'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  get 'comments/create'
  get 'comments/destroy'
  resources :top, :only => [:index]
  root "top#index"
  resources :users, :only => [:show, :index, :edit, :update]
  resources :recruitments do
    resources :comments, :only => [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

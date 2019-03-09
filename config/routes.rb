Rails.application.routes.draw do
  devise_for :users
  get 'comments/create'
  get 'comments/destroy'
  resources :top, :only => [:index]
  root "top#index"
  resources :recruitments do
    resources :comments, :only => [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

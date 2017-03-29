Rails.application.routes.draw do
  # get 'comments/index'
  # post 'comments/create'
  # put 'comments/update'
  # delete 'comments/destroy'
	resources :comments, only: [:index, :create, :edit, :update, :destroy]
	devise_for :users
	resources :posts
	root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

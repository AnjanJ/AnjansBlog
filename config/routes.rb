Rails.application.routes.draw do
  resources :pages
  devise_for :users
	root to: 'articles#index'
  resources :articles do
  	resources :comments
  end
  resources :tags
end

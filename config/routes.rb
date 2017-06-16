Rails.application.routes.draw do
  

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'home/index'
resources :products do
	resources :comments
end
resources :categories

root 'home#index'
end
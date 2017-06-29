Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :teachers

  resources :batches do
  	get :ask
  	resources :students do
  		resources :performances
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

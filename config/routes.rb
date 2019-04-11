Rails.application.routes.draw do
  
  root 'home#index'
  devise_for :users, controllers: { confirmations: 'users/confirmations' }
  get 'clubs/clubadmin', to: "clubs#clubadmin"
  resources :clubs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

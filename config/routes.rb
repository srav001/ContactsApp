Rails.application.routes.draw do
  resources :groups
  #get 'home/index'
  devise_for :users, controllers: { registrations: "registrations"}
  #resources :phones
  resources :contacts
  
  root 'home#index' # change root to contact index page
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

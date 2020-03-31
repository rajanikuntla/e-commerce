Rails.application.routes.draw do
  devise_for :users
  root 'application#home'
 # get '/users/sign_up', to: 'users#sign_up'
 # get '/users/sign_in', to: 'users#sign_in'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

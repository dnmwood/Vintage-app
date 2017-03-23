Rails.application.routes.draw do

  devise_for :users, :path => 'accounts'

  resources :user do
    resources :games
  end
  root 'games#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  devise_for :users, :path => 'accounts'

  resources :user do
    resources :games
  end
  root 'games#index'

  # get '/user/:user_id/games/update/all', to: 'games#update', as: 'games_update_all'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

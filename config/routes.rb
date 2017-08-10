Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  # devise_for :users

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resources :boards

  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }


end

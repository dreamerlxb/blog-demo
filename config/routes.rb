Rails.application.routes.draw do

  resources :comments
  resources :topics
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'me', to: 'users#index'
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'check', to: 'pages#check_markdown'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'
  # mount RuCaptcha::Engine => '/rucaptcha'

  root to: 'pages#home'
end

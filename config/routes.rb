Rails.application.routes.draw do
  devise_for :users
  resources :portfolios
  # get 'welcome/index'
  get 'welcome', to: 'welcome#index'
  resources :articles do
    resources :comments
  end
  root 'welcome#index'
end

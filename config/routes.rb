Rails.application.routes.draw do
  resources :portfolios
  # get 'welcome/index'
  get 'welcome', to: 'welcome#index'
  resources :articles do
    resources :comments
  end
  root 'welcome#index'
end

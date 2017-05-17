Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login',
                                   sign_out: 'logout',
                                   sign_up: 'register' }
  resources :portfolios
  # get 'welcome/index'
  get 'welcome', to: 'welcome#index'
  resources :articles do
    resources :comments
  end
  root 'welcome#index'
end

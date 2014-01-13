DislikeIt::Application.routes.draw do
  get "dashboards/show"
  resources :welcome, only: [:index]
  devise_for :users
  
  authenticated :user do
    root to: 'dashboards#show', as: 'authenticated_root'
  end

  root to: 'welcome#index'

  
end

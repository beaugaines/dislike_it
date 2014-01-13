DislikeIt::Application.routes.draw do
  resources :dislikes

  resources :welcome, only: [:index]
  devise_for :users
  
  authenticated :user do
    root to: 'dashboards#show', as: 'authenticated_root'
  end

  root to: 'welcome#index'
  
end

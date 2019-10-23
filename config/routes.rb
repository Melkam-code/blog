Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'news/world_news'
  get 'news/latest_news'
  
resources :articles do
  resources :comments
end 

  root 'welcome#index'
  
end

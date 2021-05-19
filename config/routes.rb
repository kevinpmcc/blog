Rails.application.routes.draw do
  get 'welcome/index'


  resources :articles do
    resources :comments
  end
  post '/bulk_create_articles', to: 'articles#bulk_create_articles'
  root 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

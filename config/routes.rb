Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/articles' => 'articles#index'
  # get '/articles/name/:name' => 'articles#find_name'
  
  # get '/articles/:id' => 'articles#show', as: 'article'

  # get '/articles/new' => 'articles#new', as: 'new_article'
  # post '/articles' => 'articles#create', as: 'article_create'

  # resources :articles do
  #   resources :comments
  # end

  # get '/users' => 'users#index'
  # get '/users/new' => 'users#new', as: 'new_user'
  # post '/users' => 'users#create', as: 'create_user'
  namespace :api do
    get '/creator-roles' => 'creator_roles#index'
  end

  # resources :articles

  resources :articles#, defaults: { format: 'js' }
end

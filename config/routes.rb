Rails.application.routes.draw do
  root 'pages#index'

  get '/login' => 'session#new', :as => 'login'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/social' => 'pages#social'

  get '/admins/fixdata' => 'admins#fixdata', :as => 'fixdata'
  get '/admins/content' => 'admins#all_content', :as => 'all_content'
  get '/admins/new_mp' => 'admins#new_mp', :as => 'new_mp'
  post '/admins/new_mp' => 'admins#create'

  get '/resources' => 'pages#resources'

    resources :users
    resources :pages
    resources :missing_people
    resources :admins

end

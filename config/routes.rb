Rails.application.routes.draw do
  root 'pages#index'
  get '/login' => 'session#new', :as => 'login'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/social' => 'pages#social'
    resources :users
    resources :pages
    resources :missing_people

end

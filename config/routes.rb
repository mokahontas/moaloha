Rails.application.routes.draw do
  namespace :admin do
  get 'dashboard/index'
  end

  root 'pages#index'
  get '/login' => 'session#new', :as => 'login'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/social' => 'pages#social'
  get '/fixdata' => 'missing_people#fixdata'
    resources :users
    resources :pages
    resources :missing_people
    resources :admins

end

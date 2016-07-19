Rails.application.routes.draw do
  resources :impressions
  root 'pages#index'

  get '/login' => 'session#new', :as => 'login'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/social' => 'pages#social'
  get '/first24' => 'pages#firsthours', :as => 'firsthours'
  get '/county' => 'pages#county', :as => 'county'
  get '/media' => 'pages#media', :as => 'media'
  get '/sar' => 'pages#sar', :as => 'sar'
  get '/law_enforcement' => 'pages#law_enforcement', :as => 'law_enforcement'
  get '/fed' => 'pages#fed', :as => 'fed'

  get '/fixdata' => 'admins#fixdata', :as => 'fixdata'
  get '/content' => 'admins#all_content', :as => 'all_content'
  get '/new_mp' => 'admins#new_mp', :as => 'new_mp'
  post '/new_mp' => 'admins#create'
  get '/ipdata' => 'admins#ipdata', :as => 'ipdata'
  get '/resources' => 'pages#resources'

    resources :users
    resources :pages
    resources :missing_people
    resources :admins

end

Rails.application.routes.draw do

  root 'pages#index'

  get '/login' => 'session#new', :as => 'login'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/social' => 'pages#social'
  get '/first24' => 'pages#firsthours', :as => 'firsthours'
  get '/firstdays' => 'pages#firstdays', :as => 'firstdays'
  get '/second_week' => 'pages#second_week', :as => 'secondweek'
  get '/county' => 'pages#county', :as => 'county'
  get '/media' => 'pages#media', :as => 'media'
  get '/sar' => 'pages#sar', :as => 'sar'
  get '/law_enforcement' => 'pages#law_enforcement', :as => 'law_enforcement'
  get '/fed' => 'pages#fed', :as => 'fed'
  get '/firstmonth' => 'pages#first_month', :as => 'firstmonth'
  get '/thirdmonth' => 'pages#thirdmonth', :as => 'thirdmonth'
  get '/sixthmonth' => 'pages#sixth_month', :as => 'sixthmonth'
  get '/firstyear' => 'pages#first_year', :as => 'firstyear'
  get '/reportamissingperson' => 'pages#ramp', :as => 'ramp'


  get '/fixdata' => 'admins#fixdata', :as => 'fixdata'
  get '/content' => 'admins#all_content', :as => 'all_content'
  get '/new_mp' => 'admins#new_mp', :as => 'new_mp'
  post '/new_mp' => 'admins#create'
  get '/ipdata' => 'admins#ipdata', :as => 'ipdata'
  get '/resources' => 'pages#resources'
  get '/about' => 'pages#about'

    resources :users
    resources :pages
    resources :missing_people
    resources :admins

end

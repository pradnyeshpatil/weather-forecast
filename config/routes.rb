Rails.application.routes.draw do
  # get 'home/get_weather'
  root 'home#get_weather'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy' #using get instead of delete as delete method is not working due to javascript issue"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

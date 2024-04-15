# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'sessions/create'
  resources :users, only: [:create, :index, :show, :update, :destroy] 
  post '/login', to: 'sessions#create'
end


Rails.application.routes.draw do
  get 'sessions/create'
  resources :posts # will generate all routes for posts including POST /posts with action create
end

  #Route for Profiles
  Rails.application.routes.draw do
  get 'sessions/create'
    resources :profile_s
  end

  

  # Route for Angular app
  #get '/angular-app', to: 'angular#app'
#end

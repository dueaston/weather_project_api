# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :users, only: [:create, :index, :show, :update, :destroy] 
end

  #Route for Profiles
  Rails.application.routes.draw do
    resources :profile_s
  end

  # Route for Angular app
  get '/angular-app', to: 'angular#app'
end

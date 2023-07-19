Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/auth/login", to: "auth#login"
  get "/fav", to: "users#favorite_exercises"
  delete "/fav/:exercise_id", to: "users#fav_delete"
  # still working on thhis route my-appointments
  get "/my-appointments", to: "users#get_appointments"
  get '/upper_legs', to: 'exercises#upper_legs'
  get '/lower_legs', to: 'exercises#lower_legs'
  get '/shoulders', to: 'exercises#shoulders'
  get '/chest', to: 'exercises#chest'
  get '/upper_arms', to: 'exercises#upper_arms'
  get '/lower_arms', to: 'exercises#lower_arms'
  get '/waist', to: 'exercises#waist'
  get '/back', to: 'exercises#back'
  resources :favorites, only: [:index, :show, :create, :destroy]
  resources :exercises, only:[:index, :show]
  resources :reviews, only:[:index, :show, :create, :destroy]
  resources :appointments, only:[:index, :show, :create, :destroy]
  resources :physical_therapists, only:[:index, :show, :create, :update, :destroy]
  resources :users, only:[:index, :show, :update, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end

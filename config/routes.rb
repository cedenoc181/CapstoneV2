Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/auth/login", to: "auth#login"
  get "/fav", to: "users#favorite_exercises"
  delete "/fav/:exercise_id", to: "users#fav_delete"
  # still working on thhis route my-appointments
  get "/my-appointments", to: "users#get_appointments"
  get 'exercises/upper_legs', to: 'exercises#upper_legs'
  get 'exercises/lower_legs', to: 'exercises#lower_legs'
  get 'exercises/shoulders', to: 'exercises#shoulders'
  get 'exercises/chest', to: 'exercises#chest'
  get 'exercises/back', to: 'exercises#back'
  get 'exercises/upper_arms', to: 'exercises#upper_arms'
  get 'exercises/lower_arms', to: 'exercises#lower_arms'
  get 'exercises/waist', to: 'exercises#waist'
  resources :favorites, only: [:index, :show, :create, :destroy]
  resources :exercises, only:[:index, :show]
  resources :reviews, only:[:index, :show, :create, :destroy]
  resources :appointments, only:[:index, :show, :create, :destroy]
  resources :physical_therapists, only:[:index, :show, :create, :update, :destroy]
  resources :users, only:[:index, :show, :update, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end

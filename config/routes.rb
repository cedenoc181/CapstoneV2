Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/auth/login", to: "auth#login"
  # fav route displays only users fav exercises 
  get "/fav", to: "users#favorite_exercises"
  delete "/fav/:exercise_id", to: "users#fav_delete"
  # still working on this route my-appointments
  get "/my-appointments", to: "users#get_appointments"
  delete "/my-appointments/:id", to: "users#delete_visit"

  # routes for body part filter for exercise data with underscore
  get '/upper_legs', to: 'exercises#upper_legs'
  get '/lower_legs', to: 'exercises#lower_legs'
  get '/upper_arms', to: 'exercises#upper_arms'
  get '/lower_arms', to: 'exercises#lower_arms'
  #dry code for other body parts 
  get '/:body_part', to: 'exercises#body_part_filter', constraints: { body_part: /(shoulders|chest|waist|back)/ }

  # routes for equipment filter for exercise data
  get "/body_weight", to: "exercises#body_weight"
  get "/stability_ball", to: "exercises#stability_ball"
# dry code routes for other equipment 
get '/:equipment', to: 'exercises#equipment_filter', constraints: { equipment: /(weighted|band|barbell|cable|dumbbell|kettlebell)/ }

# get exercise through target 
get "/:target", to: "exercises#target_filter", constraints: { target: /(abs|lats|pectorals|hamstrings|triceps|biceps|quads|glutes|delts|forearms|adductors|calves|traps|spine|abductors)/}

get "/serratus_anterior", to: "exercises#s_a"

get "/cardiovascular_system", to: "exercises#cardio"

# get Physical therapist based on insurance network this is commented out until fixed
# get "/:insurance_network", to: "physical_therapists#insurance_filter", constraints: {insurance_network: /(Assurant|Anthem Inc.|CIGNA|Kaiser Foundation| Allied Insurance|Blue Cross Blue Sheild|Aflac|Metropolitan|Allstate|United Health)/}

# get "/pt/:specialization", to: "physical_therapists#specialization_filter", constraints: { specialization: /(Cardiovascular|Geriatric|Orthopaedic|Electrophysiologic|Womens_Health|Neurology|Sports|Pediatric|Oncology)/ }

# come back to this and dry this code up.
# these are filter routes that will filter the pt specializations available for users
get "/sports", to: "physical_therapists#sports_fil"

get "/geriatric", to: "physical_therapists#geriatric_fil"

get "/cardiovascular", to: "physical_therapists#cardiovascular_fil"

get "/neurology", to: "physical_therapists#neurology_fil"

get "/pulmonary", to: "physical_therapists#pulmonary_fil"

get "/oncology", to: "physical_therapists#oncology_fil"

get "/pediatric", to: "physical_therapists#pediatric_fil"

get "/electrophysiologic", to: "physical_therapists#electrophysiologic_fil"

get "/orthopedic", to: "physical_therapists#orthopedic_fil"

get "/whealth", to: "physical_therapists#womens_health"

# this will gewnerate PT 's available for hokme visits 
get "/travel2home", to: "physical_therapists#yes_HV"



# get '/aflac', to: 'physical_therapists#filter_by_insurance'

  # routes for 
  resources :favorites, only: [:index, :show, :create, :destroy]
  resources :exercises, only:[:index, :show]
  resources :reviews, only:[:index, :show, :create, :destroy]
  resources :appointments, only:[:index, :show, :update, :create, :destroy]
  resources :physical_therapists, only:[:index, :show, :update, :destroy]
  resources :users, only:[:index, :show, :update, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
  
end

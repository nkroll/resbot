Resbot::Application.routes.draw do

  resources :edu_details

  resources :educations

  resources :exp_details

  resources :experiences

  root :to => "pages#home"
  
  resources :users

  get "pages/pricing"

end

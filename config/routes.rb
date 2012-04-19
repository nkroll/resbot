Resbot::Application.routes.draw do
  
  root :to => "pages#home"

  resources :skills

  resources :skill_sets

  resources :edu_details

  resources :educations

  resources :exp_details

  resources :experiences
  
  resources :users

  get "pages/pricing"

end

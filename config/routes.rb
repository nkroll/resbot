Resbot::Application.routes.draw do

  root :to => "pages#home"
  
  resources :users

  get "pages/pricing"

end

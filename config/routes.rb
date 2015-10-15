Rails.application.routes.draw do
  root :to => 'beards#index'
  
  resources :beards
end

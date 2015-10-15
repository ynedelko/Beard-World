Rails.application.routes.draw do
  root :to => 'beards#index'

  resources :beards do
    resources :reviews
  end
end

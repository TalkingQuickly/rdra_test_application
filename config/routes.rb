Rails.application.routes.draw do
  
  resources :awesomes
  root "awesomes#index"

end

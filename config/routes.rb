Rails.application.routes.draw do
  resources :scooters

  root to: "scooters#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :special_dates
  resources :messages
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

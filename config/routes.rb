Rails.application.routes.draw do
  
      resources :special_dates, only: [:index, :create]
      resources :messages, only: [:index, :create, :destroy, :show, :update]
      resources :users, only: [:index, :create, :show, :edit, :update]
      post "/login", to: "auth#login"
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    

end

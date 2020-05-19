Rails.application.routes.draw do
  resources :deliveries
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  root to: "home#index"


  get "/private", to: "home#private"

end

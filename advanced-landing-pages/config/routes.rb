Rails.application.routes.draw do
  root 'home#index'
  get "/lp1", to: 'home#lp1'
  get "/lp2", to: 'home#lp2'
  get "/lp3", to: 'home#lp3'
  get "/services", to: "home#services", as: :services
  post :twitter, to: "home#twitter", as: :twitter
  post :new_user, to: 'users#create', as: :new_user
  post "/confirm/:hash" to: "users#confirmation", as: :confirmation
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

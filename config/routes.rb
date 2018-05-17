Rails.application.routes.draw do
  root 'home#index'
  get '/1', to: "home#lp1", as: "land1"
  get '/2', to: "home#lp2", as: "land2"
  get '/3', to: "home#lp3", as: "land3"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

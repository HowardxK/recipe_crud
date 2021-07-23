Rails.application.routes.draw do
  resources :recipers, except: [:show]
end

Rails.application.routes.draw do
  root 'home#index'
  
  resources :frogs, only: %i[index show new create destroy edit update]
end

Rails.application.routes.draw do
  root 'home#index'
  
  resources :frogs, only: %i[index]
end

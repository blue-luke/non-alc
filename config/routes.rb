Rails.application.routes.draw do
  resources :manufacturers, only: [:index, :create]
  resources :drinks, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

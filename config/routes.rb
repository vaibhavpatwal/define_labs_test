Rails.application.routes.draw do
  root "homes#index"
  resources :authors
  resources :books
end

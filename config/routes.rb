Rails.application.routes.draw do
  resources :vendors
  resources :employees
  resources :titles
  resources :shops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'shops#index'
end

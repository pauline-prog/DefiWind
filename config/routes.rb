Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'meteo', to: 'pages#meteo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  post "posts/:post_id/likes", to: "pages#like", as: :new_like
#   member do
#     put "like", to: "pages#upvote"
#     put "dislike", to: "pages#downvote"
#   end
# end
  post "events/:event_id/favorites", to: "events#favorite", as: :new_favorite
  get 'meteo', to: 'pages#meteo'
  get 'favorited_events', to: 'events#index_favorited', as: :favorited_events
  get 'day_events', to: 'events#index_day', as: :day_events
  get 'night_events', to: 'events#index_night', as: :night_events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events, only: [:index, :show]
  resources :positions, only: :index
end

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
  get 'meteo', to: 'pages#meteo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

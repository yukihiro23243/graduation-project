Rails.application.routes.draw do
  devise_for :users
  
  root 'static_pages#top'
  get "dashboard", to: "dashboard#index"
  get "mypage", to: "mypages#show"

  resources :posts
end

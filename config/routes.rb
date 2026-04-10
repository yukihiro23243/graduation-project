Rails.application.routes.draw do
  devise_for :users
  
  root 'static_pages#top'
  get "dashboard", to: "dashboard#index"
end

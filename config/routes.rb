Rails.application.routes.draw do
  resources :hikes
  devise_for :users
end

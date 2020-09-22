Rails.application.routes.draw do
  devise_for :users
  root to: "user_infos#index"
  resources :users, only: [:edit, :update]
end

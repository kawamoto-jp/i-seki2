Rails.application.routes.draw do
  devise_for :users
  get 'user_infos/index'
  root to: "user_infos#index"
end

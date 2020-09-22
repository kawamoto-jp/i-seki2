Rails.application.routes.draw do
  get 'user_infos/index'
  root to: "user_infos#index"
end

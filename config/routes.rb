Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :questionnaires
  resources :candidats
  get "/check_list", to: "pages#check_list", as: 'check_list'
end

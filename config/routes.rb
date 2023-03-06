Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :questionnaires do
    resources :candidats
  end
  resources :questionnaires
end

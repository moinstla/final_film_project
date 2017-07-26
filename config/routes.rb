Rails.application.routes.draw do
  resources :shoots
  root to: "posts#index"

  devise_for :users

  resources :posts do
    resources :comments
  end
end

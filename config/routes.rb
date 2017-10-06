Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users

  resources :shoots

  resources :posts do
    resources :comments
  end

  resources :galleries do
    resources :videos
  end
end

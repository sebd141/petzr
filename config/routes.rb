Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: %i[index show] do
    resources :reviews, only: %i[new create]
    resources :pets, only: [:new, :create]
  end
  resources :contracts do
    resources :posts, only: %i[new create]
  end
  resources :posts, only: %i[edit update destroy]
  resources :pets, only: [:edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

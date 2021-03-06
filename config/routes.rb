Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users, only: %i[index show update] do
    resources :reviews, only: %i[new create]
    resources :pets, only: %i[new create]
    resources :contracts, only: :create
  end
  resources :contracts, except: :create do
    get :accept, on: :member
    get :decline, on: :member
    resources :posts, only: %i[new create]
  end
  resources :posts, only: %i[edit update destroy]
  resources :pets, only: %i[edit update destroy]
  get '/dashboard/', to: "pages#dashboard"

  patch "/become_pet_sitter", to: "users#become_pet_sitter", as: :become_pet_sitter
  get "/become_pet_sitter", to: "users#add_pet_sitter_details", as: :new_pet_sitter_form
  get "/faq", to: "pages#faq", as: :faq
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

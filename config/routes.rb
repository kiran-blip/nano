Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "activities/:id/favorite", to: "activities#favorite", as: "favorite_activity"

resources :activities, only: [:index, :show, :new, :create, :destroy] do
    resources :reviews, only: [:create]
  end
end

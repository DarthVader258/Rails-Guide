Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords",
    confirmations: "users/confirmations"
  }
  root 'home#index'

  resources :questions do
    member do
      get "toggle_like"
      get "toggle_dislike"
    end
  end

  resources :plans do
    member do
      get :activate
      get :deactivate
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

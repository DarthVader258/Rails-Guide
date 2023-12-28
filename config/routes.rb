Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords",
    confirmations: "users/confirmations"
  }
  root 'home#index'

  resources :questions 

  resources :plans do
    post 'activate_plan_for_user', on: :member
  end

  # resources :plans do
    # post "activates_plan_for_user", on: :member
    # member do
      # match 'activate_plan_for_user', via: [:post, :put], as: :activate_plan_for_user
      # put 'activate_plan_for_user'
      # put :deactivate
      # get :activate
      # get :deactivate
    # end
  # end

  resources :likes, only: [:create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

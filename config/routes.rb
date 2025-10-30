Rails.application.routes.draw do
  devise_for :users

  resources :categories, only: [:index, :new, :create, :destroy]

  get "up" => "rails/health#show", as: :rails_health_check
end

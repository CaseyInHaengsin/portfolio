Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :skills
      resources :experiences
      resources :educations
    end
  end

  resources :skills
  resources :experiences
  resources :educations
end

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'admin/login', sign_out: '/admin/logout' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :skills
      resources :experiences
      resources :educations
      resources :projects
    end
  end
  get 'education', to: 'educations#index'
  resources :skills
  resources :experiences
  resources :educations
  resources :projects
  
end

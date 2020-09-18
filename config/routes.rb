Rails.application.routes.draw do
  resources :profiles, only: [:show, :update, :index, :edit, :new]
  devise_for :users
  root 'profiles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

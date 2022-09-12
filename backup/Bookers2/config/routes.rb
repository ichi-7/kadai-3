Rails.application.routes.draw do
  
  root to: "homes#top"
  devise_for :users
  
  resources :books, only: [:new, :index, :show, :create, :edit, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update]
  
  get 'homes/about' => 'homes#about', as: 'about'
  
end

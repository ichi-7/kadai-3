Rails.application.routes.draw do
  
  root to: "homes#top"
  devise_for :users
  
  resources :books, only: [:new, :index, :show, :create, :edit]
  resources :users, only: [:index, :show, :edit]
  
  get 'homes/about' => 'homes#about', as: 'about'
  
end

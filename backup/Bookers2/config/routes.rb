Rails.application.routes.draw do
  
  root to: "homes#top"
  
  devise_for :users, controllers: {
  registrations: 'users/registrations'
}
  
  resources :books, only: [:new, :index, :show, :create, :edit, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update]
  
  get '/home/about' => 'homes#about', as: 'about'
  
end
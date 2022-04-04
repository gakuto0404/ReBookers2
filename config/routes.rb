Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users
  get 'homes/top' => 'homes#top' ,as: :top
  get 'homes/about' => 'homes#about' ,as: :about
  post 'books' => 'books#create'
  resources :users, only: [:show, :edit, :index]
  resources :books, only: [:new, :index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
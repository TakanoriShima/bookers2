Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  devise_for :users
  root to: 'homes#top'
  get '/home/about', to: 'homes#about'
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit]
end

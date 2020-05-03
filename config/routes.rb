Rails.application.routes.draw do
  
  devise_for :users
  root 'home#top'
  get 'home/about', to: 'home#about'
  resources :users, only: [:show,:index,:edit,:update]
  resources :books, only: [:show, :index, :edit, :update, :create, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resource :book_comments, only: [:create, :destroy]
  end
end
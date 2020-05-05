Rails.application.routes.draw do

  devise_for :users
  root 'home#top'
  get 'home/about', to: 'home#about'
  resources :users, only: [:show,:index,:edit,:update]

  resources :relationships, only: [:create, :destroy]

  resources :books, only: [:show, :index, :edit, :update, :create, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  get 'followers/:id'=>'followers#show', as:'followers'
  get 'followings/:id'=>'followings#show', as:'followings'

end
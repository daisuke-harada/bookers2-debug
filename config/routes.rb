Rails.application.routes.draw do

  devise_for :users
  root 'home#top'
  get 'home/about', to: 'home#about'
  resources :users, only: [:show,:index,:edit,:update]

  resources :relationships, only: [:create, :destroy]

  resources :books, only: [:show, :index, :edit, :update, :create, :destroy] do
    resources :book_comments, only: [:create, :destroy]
  end

  post   '/favorite/:book_id' => 'favorites#favorite', as: 'favorite'
  delete '/favorite/:book_id' => 'favorites#unfavorite', as: 'unfavorite'

  get 'followers/:id'=>'followers#show', as:'followers'
  get 'followings/:id'=>'followings#show', as:'followings'
  get 'searchs/search'=> 'searchs#search', as: 'searchs_result'

end
Rails.application.routes.draw do
  post 'follow/:id' => 'relationships#create', as: 'follow'
  post 'unfollow/:id' => 'relationships#destroy', as: 'unfollow'

  #get "following" => "relationships#following"
  #get "followers" => "relationships#followers"

  #post 'follow/:id' => 'relationships#create', as: 'follow'
  #post 'unfollow/:id' => 'relationships#destroy', as: 'unfollow'

  get 'home/about'
  root 'home#top'

  devise_for :users
  resources :users,only: [:show,:index,:edit,:update] do
    member do
      get :following, :followers
    end
  end
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resource :book_comments, only: [:create, :destroy]
  end
end
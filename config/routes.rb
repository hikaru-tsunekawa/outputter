Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :notes, only: [:index, :new, :create, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end

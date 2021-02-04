Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :notes, only: [:index, :new, :create, :show, :destroy]
end

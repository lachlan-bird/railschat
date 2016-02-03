Rails.application.routes.draw do
  resources :rooms
  devise_for :users
  root to: 'rooms#index'

  mount ActionCable.server => '/cable'
end

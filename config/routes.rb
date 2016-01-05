Rails.application.routes.draw do
  get 'home/index'

  resources :preferences
  get 'profile/index'

  get 'profile/show'

  get 'status/approve'
  get 'status/reject'

  resources :posts
  root to: 'home#index'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end

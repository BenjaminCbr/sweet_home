Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#show'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :test_jobs, only: [:create]
  resources :counters, only: [:destroy]
end

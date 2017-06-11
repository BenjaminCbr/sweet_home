Rails.application.routes.draw do
  root to: 'homes#show'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :test_jobs, only: [:create]
  resources :counters, only: [:destroy]
end

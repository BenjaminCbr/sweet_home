Rails.application.routes.draw do
  root to: 'homes#show'
  resources :test_jobs, only: [:create]
  resources :counters, only: [:destroy]
end

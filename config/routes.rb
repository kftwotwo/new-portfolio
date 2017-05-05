require 'sidekiq/web'

Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]

  mount Sidekiq::Web => '/sidekiq'

  root "contacts#new"
end

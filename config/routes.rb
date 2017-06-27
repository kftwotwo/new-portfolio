require 'sidekiq/web'

Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]

  devise_for :users
  resources :blogs

  authenticate :users do
    mount Sidekiq::Web => '/sidekiq'
  end

  root "contacts#new"
end

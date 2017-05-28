require 'sidekiq/web'

Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]

  devise_for :admins
  resources :blogs

  authenticate :admins do
    mount Sidekiq::Web => '/sidekiq'
  end

  root "contacts#new"
end

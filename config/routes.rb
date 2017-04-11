Rails.application.routes.draw do
  resources :static_pages
  resources :contacts, only: [:new, :create]
end

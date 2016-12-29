Rails.application.routes.draw do

  get 'home/index'


  resources :sites
  resources :tags, only: [:show,:create]

  root to: 'home#index'
end

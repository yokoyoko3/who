Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root 'users#index'
  resources :users, only: :new

  resources :persons
  get 'people', to: 'persons#people'
end

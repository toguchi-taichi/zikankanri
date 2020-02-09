Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/show'
  devise_for :users, controllers: { 
    :omniauth_callbacks => 'omniauth_callbacks', 
    :sessions => 'users/sessions',
    :registrations => 'users/registrations'
  }
  resources :calendars
  resources :timers
  patch 'timers/', to: 'timers#update', as: 'update_timer'
end

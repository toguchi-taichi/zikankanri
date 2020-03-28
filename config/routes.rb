Rails.application.routes.draw do
  get 'partials/index'
  get 'partials/show'
  get 'ajax/index'
  get 'ajax/submits', to: 'ajax#submits'
  get 'practice/index'
  get 'timers/index', to: 'timers#index'
  root 'calendars#index'
  get 'pages/show'
  get 'events', to: 'event#events'
  get 'events/index', to: 'event#index'
  devise_for :users, controllers: { 
    :omniauth_callbacks => 'omniauth_callbacks', 
    :sessions => 'users/sessions',
    :registrations => 'users/registrations'
  }
  resources :calendars
  resources :timers
  patch 'timers/', to: 'timers#update', as: 'update_timer'
end

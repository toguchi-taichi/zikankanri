Rails.application.routes.draw do
  root 'calendars#index'
  get 'calendars/index'
  get 'calendars/show'
  get 'timers/show'
  
end

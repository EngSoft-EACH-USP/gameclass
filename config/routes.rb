Rails.application.routes.draw do
  resources :coaches
  resources :coach_details, only:[:show]

  root 'rails/welcome#index'
end

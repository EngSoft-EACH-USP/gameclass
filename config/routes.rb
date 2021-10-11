Rails.application.routes.draw do
  resources :coach_details, only:[:index, :show]
  
  root 'rails/welcome#index'
end

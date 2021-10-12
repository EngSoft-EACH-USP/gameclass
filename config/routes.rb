Rails.application.routes.draw do
  #root 'rails/welcome#index'
  get '/login' => 'login#index'
  get '/login/fail' => 'login#fail'
  root 'login#index'
end
Rails.application.routes.draw do

  get 'whoami/index'
  # Funcionalidade login/logout
  get     'login'       => 'sessions#forms'
  post    'login'       => 'sessions#create'
  delete  'login'       => 'sessions#destroy'

  # Funcionalidade para testar se estou ou não logado
  get     'whoami'      => 'whoami#index'

  # Home
  get     'me'          => 'personal#home'

  root 'rails/welcome#index'
  #root  'sessions#forms'
end
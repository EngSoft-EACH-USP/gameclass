Rails.application.routes.draw do
  resources :coaches
  resources :coach_details, only:[:show]

  # Funcionalidade login/logout
  get     'login'       => 'sessions#forms'
  post    'login'       => 'sessions#create'
  delete  'login'       => 'sessions#destroy'

  # Funcionalidade para testar se estou ou não logado
  get     'whoami'      => 'whoami#index'

  # Página pessoal do usuário cadastrado
  get     'me'          => 'personal#home'

  root 'rails/welcome#index'
end

Rails.application.routes.draw do
  resources :coach_details, only:[:show]

  # Funcionalidade de encontrar coaches
  get     'coaches'     => 'coaches#index'

  # Funcionalidade login/logout
  get     'login'       => 'sessions#forms'
  post    'login'       => 'sessions#create'
  delete  'login'       => 'sessions#destroy'

  # Funcionalidade registrar
  get     'register'    => 'register#index'
  post    'register'    => 'register#new'

  # Funcionalidade para testar se estou ou não logado
  get     'whoami'      => 'whoami#index'

  # Página pessoal do usuário cadastrado
  get     'me'          => 'personal#home'

  # Seção de jogos
  get     '/games'      => 'games#show_games'
  
  root 'root#index'
end
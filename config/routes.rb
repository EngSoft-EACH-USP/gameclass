
Rails.application.routes.draw do
  resources :coach_details, only:[:show]

  # Funcionalidade de encontrar coaches
  get     'coaches'     => 'coaches#index'

  # Funcionalidade login/logout
  get     'login'       => 'session#forms'
  post    'login'       => 'session#login'
  delete  'login'       => 'session#logout'

  # Funcionalidade registrar
  get     'register'    => 'register#forms'
  post    'register'    => 'register#register'

  # Funcionalidade para testar se estou ou não logado
  get     'whoami'      => 'whoami#index'

  # Página pessoal do usuário cadastrado
  get     'me'          => 'personal#home'

  # Seção de jogos
  get     '/games'      => 'games#show_games'
  
  root 'root#index'
end
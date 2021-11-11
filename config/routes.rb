
Rails.application.routes.draw do
  resources :coach_details, only:[:show]

  # Funcionalidade de encontrar coaches
  get     'coaches'                    => 'coaches#index'

  # Funcionalidade login/logout
  get     'login'                      => 'session#forms'
  post    'login'                      => 'session#login'
  delete  'login'                      => 'session#logout'

  # Funcionalidade para editar usuario
  get     'infos/:id'                  => 'infos#show', as: 'info'
  patch   'infos/:id'                  => 'infos#update'
  
  # Funcionalidade registrar
  get     'register'                   => 'register#forms'
  post    'register'                   => 'register#register'

  # Funcionalidade para testar se estou ou não logado
  get     'whoami'                     => 'whoami#index'

  # Página pessoal do usuário cadastrado
  get     'me'                         => 'personal#home'

  get 'meus_alunos'                    => 'meus_alunos#show_meus_alunos'

  # Seção de jogos
  get     'games'                      => 'games#show_games'

  # Solicitar afiliação
  get     'affiliate'                  => 'affiliate#index'
  post    'affiliate'                  => 'affiliate#send_request'

  # Ver todas as solicitacoes
  get     'admin/affiliate'            => 'affiliate#show'
  post    'admin/affiliate/accept/:id' => 'affiliate#update', as: 'affiliate_accept'
  post    'admin/affiliate/reject/:id' => 'affiliate#update', as: 'affiliate_reject'
  
  root 'root#index'
end
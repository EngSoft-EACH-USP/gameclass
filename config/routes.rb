
Rails.application.routes.draw do
  get     '/:game/coaches/:id'          => 'coach_details#show', as: 'coaches_detail'

  # Funcionalidade de encontrar coaches
  get     '/:game/coaches'              => 'coaches#index', as: 'coaches'

  # Funcionalidade login/logout
  get     'login'                       => 'session#forms'
  post    'login'                       => 'session#login'
  delete  'login'                       => 'session#logout'

  # Funcionalidade para editar usuario
  get     'infos/:id'                   => 'infos#show', as: 'info'
  patch   'infos/:id'                   => 'infos#update'
  
  # Funcionalidade registrar
  get     'register'                    => 'register#forms'
  post    'register'                    => 'register#register'

  # Funcionalidade para testar se estou ou não logado
  get     'whoami'                      => 'whoami#index'

  # Página pessoal do usuário cadastrado
  get     'me'                          => 'personal#home'

  get     'meus_alunos'                 => 'meus_alunos#index'

  # Seção de jogos
  get     'games'                       => 'games#show_games'

  # Solicitar afiliação
  get     'affiliate'                   => 'affiliate#index'
  post    'affiliate'                   => 'affiliate#send_request'

  # Painel do administrador
  get     '/admin'                      => 'admin#index'

  # Administrador poder ver os coaches
  get     'admin/list/coaches'          => 'admin#coaches'
  delete  'admin/list/coaches/:id'      => 'admin#remove'

  # Ver todas as solicitacoes
  get     'admin/affiliate'             => 'affiliate#show'
  post    'admin/affiliate/accept/:id'  => 'affiliate#update', as: 'affiliate_accept'
  post    'admin/affiliate/reject/:id'  => 'affiliate#update', as: 'affiliate_reject'
  
  root 'root#index'
end
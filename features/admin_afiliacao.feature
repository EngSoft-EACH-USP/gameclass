#language: pt

@mock_affiliate_request

Funcionalidade:
  Como administrador
  Quero uma pagina que liste todas as solicitacoes
  De modo que eu possa ver todas elas

Cenário: Acessando a pagina de admin sem estar logado
  Dado que eu nao estou logado
  Quando eu tento acessar a pagina de listagem de solicitacoes
  Então eu não deveria ver a página de solicitacoes

Cenário: Acessando a pagina de admin sem estar logado como administrador
  Dado que eu nao estou logado como administrador
  Quando eu tento acessar a pagina de listagem de solicitacoes
  Então eu não deveria ver a página de solicitacoes

Cenário: Acessando a pagina de admin logado como admin
  Dado que eu entro no sistema como admin
  Quando eu tento acessar a pagina de listagem de solicitacoes
  Então eu deveria ver a página de solicitacoes

Cenário: Clicando o botao de aceitar uma solicitacao
  Dado que eu estou na pagina de listagem de solicitacoes
  Quando eu clico no botao de aceitar
  Então eu nao deveria ver a solicitacao
  E eu deveria ser redirecionado para a pagina de listagem
  E o usuario deveria ser atualizado para coach

Cenário: Clicando o botao de rejeitar uma solicitacao
  Dado que eu estou na pagina de listagem de solicitacoes
  Quando eu clico no botao de rejeitar
  Então eu nao deveria ver a solicitacao
  E eu deveria ser redirecionado para a pagina de listagem
#language: pt

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

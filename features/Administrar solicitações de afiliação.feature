#language: pt
#encoding: utf-8

@mock_affiliate_request

Funcionalidade: Administrar solicitações de afiliação
  Como administrador
  Quero uma pagina que liste todas as solicitacoes
  De modo que eu possa ver todas elas

  Exemplo: Acessando a pagina de admin sem estar logado
    Dado que eu não estou logado
    Quando eu tento acessar a página de solicitações de afiliação
    Então eu não deveria ver a página de solicitacoes

  Exemplo: Acessando a pagina de admin sem estar logado como administrador
    Dado que eu sou cadastrado, só não como administrador
    E que eu estou logado
    Quando eu tento acessar a página de solicitações de afiliação
    Então eu não deveria ver a página de solicitacoes

  Exemplo: Acessando a pagina de admin logado como admin
    Dado que eu sou cadastrado como administrador
    E que eu estou logado
    Quando eu tento acessar a página de solicitações de afiliação
    Então eu deveria ver a página de solicitacoes

  Exemplo: Clicando no botao de aceitar uma solicitacao
    Dado que eu sou cadastrado como administrador
    E que eu estou logado
    E que eu estou na página de solicitações de afiliação
    Quando eu clico em Aceitar
    Então um coach deve ser criado
    E o usuario deve ser atualizado
    E eu deveria ser redirecionado para a página de solicitações de afiliação
    

  Exemplo: Clicando o botao de rejeitar uma solicitacao
    Dado que eu sou cadastrado como administrador
    E que eu estou logado
    Dado que eu estou na página de solicitações de afiliação
    Quando eu clico em Rejeitar
    Então eu deveria ser redirecionado para a página de solicitações de afiliação
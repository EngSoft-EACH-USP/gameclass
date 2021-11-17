#language: pt

Funcionalidade: Administrador - Listar coaches
  Como administrador,
  De modo que eu tenha controle sobre coaches afiliados
  Quero uma página que liste todos os coaches do sistema

  Exemplo: A página mostra os coaches
    Dado que existe pelo menos um coach cadastrado
    E que eu sou cadastrado como administrador
    E que eu estou logado
    Quando eu acesso a página de administração de coaches
    Então eu deveria ver o devido coach

  Exemplo: A página não é acessível sem estar logado
    Dado que eu não estou logado
    Então eu não deveria poder acessar a página de administração de coaches

  Exemplo: A página não é acessível por alunos
    Dado que eu sou cadastrado como aluno
    E que eu estou logado
    Então eu não deveria poder acessar a página de administração de coaches

  Exemplo: A página não é acessível por professores
    Dado que eu sou cadastrado como professor
    E que eu estou logado
    Então eu não deveria poder acessar a página de administração de coaches
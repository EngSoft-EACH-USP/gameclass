#language: pt

Funcionalidade: Administrador - Painel administrativo
  Como administrador
  Eu quero um painel administrativo
  Para que eu possa navegar entre meus painéis administrativos

  Exemplo: Administrador consegue acessar
    Dado que eu estou logado como administrador
    Quando eu tento acessar o painel administrativo
    Então eu deveria ter sucesso ao acessar
    E eu deveria ver um link para a página de administração de coaches
    E eu deveria ver um link para a página de solicitações de afiliação

  Exemplo: Professor não consegue acessar
    Dado que eu estou logado como professor
    Quando eu tento acessar o painel administrativo
    Então eu deveria ver um erro de autorização

  Exemplo: Alunos não consegue acessar
    Dado que eu estou logado como aluno
    Quando eu tento acessar o painel administrativo
    Então eu deveria ver um erro de autorização

  Exemplo: Pessoa não consegue acessar porque não está logada
    Dado que eu não estou logado
    Quando eu tento acessar o painel administrativo
    Então eu deveria ver um erro de não autenticação
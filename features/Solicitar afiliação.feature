#language: pt

Funcionalidade: Solicitar afiliação
  Como aluno
  De modo que eu possa solicitar entrevista para treinador
  Quero uma página com campo descrição e botão enviar

Cenário: Acessando a página afiliar pela url
  Dado que eu sou cadastrado como aluno
  E que eu estou logado
  Quando eu acesso a página de afiliação
  Então eu deveria ver um campo Descrição
  E eu deveria ver um botão Enviar

# Isso pode demandar uam certa refatoração. O cenário não está bem descrito.
Cenário: Enviando solicitação
  Dado que eu sou cadastrado como aluno
  E que eu estou logado
  Quando eu acesso a página de afiliação
  E eu preencho o campo Descrição com qualquer texto
  E eu clico em Enviar
  Então minha solicitação deveria ser registrada no sistema

# Vou redefinir a forma como ele decide o que quer dizer "não vejo a página de afiliação"
Cenario: Tentando acessar a página de afiliação deslogado
  Dado que eu não estou logado
  Quando eu tento acessar a página de afiliação
  Então eu não deveria ver a página de afiliação

Cenário: Já sou professor
  Dado que eu sou cadastrado como professor
  E que eu estou logado
  Quando eu tento acessar a página de afiliação
  Então eu não deveria ver a página de afiliação

Cenário: Sou o administrador
  Dado que eu sou cadastrado como administrador
  E que eu estou logado
  Quando eu tento acessar a página de afiliação
  Então eu não deveria ver a página de afiliação

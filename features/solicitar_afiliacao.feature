
#language: pt

Funcionalidade:
  Como aluno
  De modo que eu possa solicitar entrevista para treinador
  Quero uma página com campo descrição e botão enviar

Cenário: Acessando a página afiliar pela url
  Dado que eu estou logado como aluno
  Quando eu tento acessar a página de afiliação
  Então eu deveria ver um campo descrição
  E eu deveria ver um botão Enviar

Cenário: Enviando solicitação
  Dado que eu estou logado como aluno
  Quando eu tento acessar a página de afiliação
  E eu preencho o campo descrição com um texto
  E eu clico no botão Enviar
  Então minha solicitação deveria ser registrada no sistema

Cenario: Tentando acessar "/afiliacao" deslogado
  Dado que eu não estou logado
  Quando eu tento acessar a página de afiliação
  Então eu não deveria ver a página de afiliação

Cenário: Já sou professor
  Dado que eu estou logado como coach
  Quando eu tento acessar a página de afiliação
  Então eu não deveria ver a página de afiliação

Cenário: Sou o administrador
  Dado que eu estou logado como administrador
  Quando eu tento acessar a página de afiliação
  Então eu não deveria ver a página de afiliação

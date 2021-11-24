#language: pt

Funcionalidade: Botão de visualizar games
  Como aluno
  De modo que eu possa acessar a página de games
  Quero um botão "games" na página inicial

  Cenário: O botão existe
    Dado que eu estou na página inicial
    Então eu deveria ver um botão "Games"

  Cenário: O botão me leva para a página de games
    Dado que eu cliquei no botão "Games"
    Então eu deveria ser redirecionado para a página de games
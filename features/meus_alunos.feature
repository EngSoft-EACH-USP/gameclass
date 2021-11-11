#language: pt

Funcionalidade:
    Como professor cadastrado,
    Eu quero uma página de alunos
    De modo que eu possa visualizar os alunos que me contrataram

Cenário: Sou um professor cadastrado
    Dado que eu estou logado como coach
    Quando eu tento acessar a página de alunos
    Então eu deveria ver os alunos que me contrataram

Cenário: Redirecionado por nao estar logado
    Dado que eu estou na página de alunos sem estar logado
    Então eu deveria ser redirecionado para a página de login
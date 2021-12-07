
#language: pt

Funcionalidade: Logout de usuário
  Como usuário logado
  Quero um botão Encerrar sessão
  De modo que minha sessão não fique exposta


Cenário: Logout funciona com sucesso
  Dado que eu sou cadastrado como qualquer
  E que eu estou logado
  Quando eu acesso minha área pessoal
  E eu clico em Sair
  Então eu deveria encerrar a minha sessão particular
  E eu deveria ser redirecionado para a página inicial

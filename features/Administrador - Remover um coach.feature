#language: pt

@clear_coaches

Funcionalidade: Remover um coach
  Como administrador
  Quero um botão na página de listagem de coach
  Para que eu possa remover um coach

Exemplo: Deletar coach funciona
  Dado que eu sou cadastrado como administrador
  E que eu estou logado
  E que existe pelo menos um coach cadastrado
  Quando eu acesso a página de administração de coaches
  E eu clico em Remover
  Então o coach deveria ser devidamente deletado
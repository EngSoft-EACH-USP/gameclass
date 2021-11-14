#language: pt

Funcionalidade: Pagina de detalhamento do coach
  Como usuario cadastrado do GameClass,
  Quero uma pagina com os detalhes do coach
  De modo que eu possa conhecer melhor o coach e entrar em contato

  Contexto: Existe um coach cadastrado
    Dado que existe pelo menos um coach cadastrado

    Cenário: Pagina de detalhamento carrega corretamente
      Dado que eu estou na pagina de listagem de coaches
      Quando eu clico em um coach
      Então eu deveria ser redirecionado para uma pagina de detalhes de coach

    Cenário: O botao de voltar funciona corretamente
      Dado que eu estou na página de detalhes do coach 1
      Quando eu clico em Voltar
      Então eu deveria ser redirecionado para a pagina de listagem de coaches

    Cenário: O botao de contato funciona corretamente
      Dado que eu estou na página de detalhes do coach 1
      Então o botao de agendamento deve estar certo

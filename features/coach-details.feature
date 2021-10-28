#language: pt

@mock_coach

Funcionalidade: Pagina de detalhamento do coach
    Como usuario cadastrado do GameClass,
    Quero uma pagina com os detalhes do coach
    De modo que eu possa conhecer melhor o coach e entrar em contato

Cenário: Pagina de detalhamento carrega corretamente
    Dado que estou na pagina de listagem de coaches
    Quando eu clico em um coach
    Então eu deveria ser redirecionado para a pagina de detalhamento

Cenário: O botao de voltar funciona corretamente
    Dado que eu estou na página de detalhamento
    Quando eu clico no botao de voltar
    Então eu deveria ser redirecionado para a pagina de listagem dos coaches

Cenário: O botao de contato funciona corretamente
    Dado que eu estou na página de detalhamento
    Então o botao de agendamento deve estar certo


#language: pt

Funcionalidade: Pagina de detalhamento do coach
    Como usuario cadastrado do GameClass,
    Quero uma pagina com os detalhes do coach
    De modo que eu possa conhecer melhor o coach e entrar em contato

Cenário: Pagina de detalhamento carrega corretamente
    Dado que estou na pagina de listagem de coaches
    Quando eu clico em um coach
    Então eu deveria ser redirecionado para a pagina de detalhamento

Cenário: Pagina nao carrega porque dados nao retornaram
    Dado que estou na pagina de listagem de coaches
    Quando eu clico em um coach
    Então eu deveria ser redirecionado para a pagina de detalhamento e receber uma mensagem de erro

Cenário: O botao de contato nao funciona
    Dado que eu estou na página de detalhamento
    Quando eu clico no botao de contato do coach
    Então eu deveria ver a mensagem de erro

Cenário: O botao de contato funciona corretamente
    Dado que eu estou na página de detalhamento
    Quando eu clico no botao de contato do coach
    Então eu deveria ser redirecionado para um link da API do whatsapp e conseguir enviar uma mensagem para o coach

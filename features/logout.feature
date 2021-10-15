
#language: pt

# Cria usuário com:
#   username: TestUser
#   password: TestPassword
@mock_user

Funcionalidade: Log-out de usuário
    Como usuário logado
    Quero um botão Encerrar sessão
    De modo que minha sessão não fique exposta

Cenário: Logout funciona com sucesso
    Dado que eu estou logado
    Quando eu entro na minha página pessoal
    E eu clico no botão sair
    Então eu devo encerrar a minha sessão particular
    E eu devo ser redirecionado para a página inicial

# language:pt

# Cria usuário com:
#   username: TestUser
#   password: TestPassword
@criar_usuario_teste

Funcionalidade: Log-out de usuário
    Como coach cadastrado
    Quero um botão log-out na minha página pessoal
    De modo que qunado eu clico
    Eu encerro minha sessão particular e sou redirecionado para a página de login.

Cenário: Logout funciona com sucesso
    Dado que eu estou logado
    Quando eu entro na minha página pessoal
    E eu clico no botão sair
    Então eu devo encerrar a minha sessão particular
    E eu devo ser redirecionado para a página inicial

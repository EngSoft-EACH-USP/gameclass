#language: pt

# Cria usuário com:
#   username: TestUser
#   password: TestPassword
@criar_usuario_teste

Funcionalidade: Login de usuário
    Como coach cadastrado do GameClass,
    Eu quero uma página de login com um botão entrar
    De modo que quando eu preencho os dados e clico
    Eu sou redirecionado para a minha página pessoal

Cenário: Eu não estou logado se não fizer login!
    Dado que eu não estou logado
    Quando eu tento acessar minha área pessoal
    Então eu devo ser redirecionado para a página de login

Cenário: A página de login só me redireciona quando já estou logado
    Dado que eu estou logado
    Quando eu tento acessar a página de login
    Então eu devo ser redirecionado para a minha área pessoal

Cenário: O login funciona e redireciona para a área pessoal
    Dado que eu não estou logado
    Quando eu tento acessar a página de login
    E eu preencho o campo usuário com "TestUser"
    E eu preencho o campo senha com "TestPassword"
    E eu clico no botão entrar
    Então minha sessão pessoal deve ser iniciada
    E eu devo ser redirecionado para a minha área pessoal

Cenário: O login falha - username inexiste
    Dado que eu não estou logado
    Quando eu tento acessar a página de login
    E eu preencho o campo usuário com "user errado"
    E eu preencho o campo senha com "senha errada"
    E eu clico no botão entrar
    Então eu devo ver a mensagem única de erro de login.

Cenário: O login falha - senha errada
    Dado que eu não estou logado
    Quando eu tento acessar a página de login
    E eu preencho o campo usuário com "TestUser"
    E eu preencho o campo senha com "senha errada"
    E eu clico no botão entrar
    Então eu devo ver a mensagem única de erro de login.

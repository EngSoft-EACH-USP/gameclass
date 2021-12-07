#language: pt

Funcionalidade: Login de usuário
  Como usuário
  Eu quero uma página de login
  Para que eu possa acessar o sistema

Contexto:
  Dado que eu sou cadastrado como qualquer

  Cenário: Eu não estou logado se não fizer login!
    Dado que eu não estou logado
    Quando eu tento acessar minha área pessoal
    Então eu deveria ser redirecionado para a página de login

  Cenário: A página de login só me redireciona quando já estou logado
    Dado que eu estou logado
    Quando eu tento acessar a página de login
    Então eu deveria ser redirecionado para minha área pessoal

  Cenário: O login funciona e redireciona para a área pessoal
    Dado que eu não estou logado
    Quando eu tento acessar a página de login
    E eu preencho corretamente o campo Usuário
    E eu preencho corretamente o campo Senha
    E eu clico em Entrar
    Então eu deveria ser redirecionado para minha área pessoal

  Cenário: O login falha - username inexiste
    Dado que eu não estou logado
    Quando eu tento acessar a página de login
    E eu preencho o campo Usuário com "user errado"
    E eu preencho o campo Senha com "senha errada"
    E eu clico em Entrar
    Então eu deveria ver "Credenciais inválidas"

  Cenário: O login falha - senha errada
    Dado que eu não estou logado
    Quando eu tento acessar a página de login
    E eu preencho corretamente o campo Usuário
    E eu preencho o campo Senha com "senha errada"
    E eu clico em Entrar
    Então eu deveria ver "Credenciais inválidas"

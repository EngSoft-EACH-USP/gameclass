#language: pt

@mock_user

Funcionalidade: Pagina de edição de usuario
    Como usuario cadastrado do GameClass,
    Quero uma pagina de edição
    De modo que eu possa editar meus dados pessoais

Cenário: Redirecionado por nao estar logado
    Dado que eu estou na página de edição sem estar logado
    Então era para eu ser redirecionado para a página de login

Cenário: Editar apenas o username funciona perfeitamente
    Dado que eu estou na página de edição logado
    Quando preencho o campo username que nao existe
    Então era para eu ser redirecionado para a página de me

Cenário: Registrar falha: username existente
    Dado que eu estou na página de edição logado
    Quando preencho o campo username com um username que existe
    Então era para eu ver "Nome de usuário indisponível."

Cenário: Editar apenas o nome funciona perfeitamente
    Dado que eu estou na página de edição logado
    Quando preencho os campos nome
    Então era para eu ser redirecionado para a página de me

Cenário: Editar apenas a senha funciona perfeitamente
    Dado que eu estou na página de edição logado
    Quando preencho o campo senha e confirmacao de senha certo
    Então era para eu ser redirecionado para a página de me

Cenário: Edição falha: senhas não conferem
    Dado que eu estou na página de edição logado
    Quando preencho diferentemente os campos senha
    Então era para eu ver "As senhas não conferem."


#language: pt

@mentalize_suas_credenciais

Funcionalidade: Registrar
    Como usuário do Gameclass
    Quero uma página "registrar"
    Para que eu possa me cadastrar no sistema

Cenário: Botão cadastrar na página de login
    Dado que eu não estou logado
    E que eu estou na página de login
    Quando eu clico em Cadastrar
    Então eu deveria ser redirecionado para a página de cadastro

Cenário: Registrar funciona perfeitamente
    Dado que eu estou na página de cadastro
    Quando eu preencho o campo username
    E eu preencho corretamente os campos de senha
    E eu preencho o campo nome
    E eu clico em Cadastrar
    Então eu deveria ser redirecionado para a página de login
    Então eu deveria ser cadastrado como aluno

Cenário: Registrar falha: username ausente
    Dado que eu estou na página de cadastro
    Quando eu preencho corretamente os campos de senha
    E eu preencho o campo nome
    E eu clico em Cadastrar
    Então eu deveria ver "Preencha todos os campos obrigatórios."

Cenário: Registrar falha: nome ausente
    Dado que eu estou na página de cadastro
    Quando eu preencho corretamente os campos de senha
    E eu preencho o campo username
    E eu clico em Cadastrar
    Então eu deveria ver "Preencha todos os campos obrigatórios."

Cenário: Registrar falha: senha ausente
    Dado que eu estou na página de cadastro
    Quando eu preencho o campo username
    E eu preencho o campo nome
    E eu clico em Cadastrar
    Então eu deveria ver "Preencha todos os campos obrigatórios."

Cenário: Registrar falha: senhas não conferem
    Dado que eu estou na página de cadastro
    Quando eu preencho o campo username
    E eu preencho diferentemente os campos senha
    E eu preencho o campo nome
    E eu clico em Cadastrar
    Então eu deveria ver "As senhas não conferem."

Cenário: Username indisponível
    Dado que eu sou cadastrado como qualquer
    Quando eu tento me cadastrar de novo
    Então eu deveria ver "Nome de usuário indisponível."
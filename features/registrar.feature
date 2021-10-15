
#language: pt

Funcionalidade: Registrar
    Como usuário do Gameclass
    Quero uma página "registrar"
    Para que eu possa me cadastrar no sistema

Cenário: Botão cadastrar na página de login
    Dado que estou na página de login
    Quando eu clico em "Cadastrar"
    Então eu deveria ser redirecionado para a página de cadastro

Cenário: Registrar funciona perfeitamente
    Dado que eu estou na página de cadastro
    Quando eu preencho o campo username
    E eu preencho os campos senha
    E eu preencho o campo nome
    E eu clico em "Cadastrar"
    E eu tento fazer login
    Então eu deveria ver minha área pessoal

Cenário: Registrar falha: username ausente
    Dado que eu estou na página de cadastro
    Quando eu preencho os campos senha
    E eu preencho o campo nome
    E eu clico em "Cadastrar"
    Então eu deveria ver "Preencha todos os campos obrigatórios."

Cenário: Registrar falha: nome ausente
    Dado que eu estou na página de cadastro
    Quando eu preencho os campos senha
    E eu preencho o campo username
    E eu clico em "Cadastrar"
    Então eu deveria ver "Preencha todos os campos obrigatórios."

Cenário: Registrar falha: senha ausente
    Dado que eu estou na página de cadastro
    Quando eu preencho o campo username
    E eu preencho o campo nome
    E eu clico em "Cadastrar"
    Então eu deveria ver "Preencha todos os campos obrigatórios."

Cenário: Registrar falha: senhas não conferem
    Dado que eu estou na página de cadastro
    Quando eu preencho o campo username
    E eu preencho diferentemente os campos senha
    E eu preencho o campo nome
    E eu clico em "Cadastrar"
    Então eu deveria ver "As senhas não conferem."
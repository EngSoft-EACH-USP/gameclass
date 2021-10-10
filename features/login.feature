#language: pt

Funcionalidade: Login de usuário
    Como coach cadastrado do GameClass,
    Quero um botão "login" e sua respectiva página
    De modo que eu possa entrar e ter acesso à minha área pessoal

Cenário: Eu tenho um botão login
    Dado que eu estou na página inicial
    Quando eu clico no botão de login
    Então eu deveria ser redirecionado para a página de login

Cenário: O login funciona
    Dado que eu estou na página de login
    # Falha de segurança manter um login válido com senha exposta assim. Precisamos ver o que fazer a respeito depois.
    Quando eu preencho o campo login com "falha@de.segurança"
    E eu preencho o campo senha com "%&hTu0mQ^Oox"
    E eu clico no botão entrar
    Então eu deveria ser redirecionado para a minha área pessoal

Cenário: O login falha - e-mail não registrado
    Dado que eu estou na página de login
    Quando eu preencho o campo login com "email@errado.com"
    E eu preencho o campo senha com "qualquer senha"
    E eu clico no botão entrar
    Então eu deveria ver a mensagem única de erro de login.

Cenário: O login falha - e-mail não registrado
    Dado que eu estou na página de login
    Quando eu preencho o campo login com "falha@de.segurança"
    E eu preencho o campo senha com "senha errada"
    E eu clico no botão entrar
    Então eu deveria ver a mensagem única de erro de login.


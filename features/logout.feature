# language:pt

Funcionalidade: Log-out de usuário
    Como coach cadastrado
    Quero um botão log-out na minha página pessoal
    De modo que qunado eu clico
    Eu encerro minha sessão particular e sou redirecionado para a página de login.

Cenário: Logout funciona com sucesso
    Dado que eu estou logado
    E que eu estou na minha página pessoal
    Quando eu clico no botão sair
    Então eu deveria encerrar a minha sessão particular
    E ser redirecionado para a página inicial

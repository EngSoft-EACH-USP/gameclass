#language: pt

Funcionalidade: Botão de solicitar afiliação
    Como aluno
    De modo que eu possa acessar a página de solicitar afiliação
    Quero um botão "solicitar afiliação" na minha área pessoal

Cenário: O botão existe
    Dado que eu estou logado como aluno
    Quando eu tento acessar minha área pessoal
    Então eu deveria ver um botão "Solicitar Afiliação"

Cenário: O botão me leva para a página de solicitar afiliação
    Dado que eu estou logado como aluno
    Quando eu acesso minha área pessoal
    E eu clico no botão "Solicitar Afiliação"
    Então eu deveria ver a página de afiliação

# Este arquivo define uma hash que relaciona o nome de todas as páginas aos seus respectivos endereços.
# Note que a página final pode ser definida como uma expressão regular; por outro lado, o mesmo não é válido para o nome.

$page_names = {
  'a página de afiliação'                 => '/affiliate',
  'a página de alunos'                    => '/meus_alunos', # Quebra de padrão
  'a página de cadastro'                  => '/register',
  'a pagina de detalhes de coach'         => /coach_details\/\d/, # Resolvi aquele seu problema com o details, Paulao =D
  'a página inicial'                      => '/',
  'a pagina de listagem de coaches'       => '/coaches',
  'a pagina de listagem de solicitacoes'  => '/admin/affiliate',
  'a página de login'                     => '/login',
  'minha área pessoal'                    => '/me',
}
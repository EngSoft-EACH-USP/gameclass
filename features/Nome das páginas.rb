
# Este arquivo define uma hash que relaciona o nome de todas as páginas aos seus respectivos endereços.
# Note que a página final pode ser definida como uma expressão regular; por outro lado, o mesmo não é válido para o nome.
# Use artigos definidos somente em strings e artigos indefinidos em expressões regulares.

$page_urls = {
  'a página de administração de coaches'  => '/admin/coaches',
  'a página de afiliação'                 => '/affiliate',
  'a página de alunos'                    => '/meus_alunos', # Quebra de padrão
  'a página de cadastro'                  => '/register',
  'a página de detalhes do coach 1'       => '/coach_details/1',
  'a página de edição de cadastro'        => '/infos/1', # Perigoso!
  'a pagina de listagem de coaches'       => '/coaches',
  'a página de login'                     => '/login',
  'a página inicial'                      => '/',
  'a página de solicitações de afiliação' => '/admin/affiliate',
  'minha área pessoal'                    => '/me',
  'uma pagina de detalhes de coach'       => /coach_details\/\d/, # Resolvi aquele seu problema com o details, Paulao =D
}
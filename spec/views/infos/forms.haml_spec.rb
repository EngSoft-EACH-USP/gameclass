
require 'rails_helper'

RSpec.describe "register/forms.haml", type: :view do

    it 'shows a missing field message when requested' do
        @missing_field = true
        render
        rendered.should =~ /Preencha todos os campos obrigatórios./
    end

    it 'shows a different passwords message when requested' do
        @different_passwords = true
        render
        rendered.should =~ /As senhas não conferem./
    end

    it 'shows a unavaliable username message when requested' do
        @username_unavaliable = true
        render
        rendered.should =~ /Nome de usuário indisponível./
    end

end
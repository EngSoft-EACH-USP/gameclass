class User < ApplicationRecord

    enum kind: [ :learner, :coach, :admin ]
    
    has_secure_password

    validates :username, presence: {message: "O usuário precisa ter um username."}
    validates :password, presence: {message: "O usuário precisa ter uma senha."}
    validates :name, presence: {message: "O usuário precisa ter um nome."}
    validates :kind, presence: {message: 'O usuário precisa ter um tipo.'}

end

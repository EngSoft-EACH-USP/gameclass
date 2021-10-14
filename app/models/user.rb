class User < ApplicationRecord

    enum kind: [ :learner, :coach, :admin ]

    validates :username, presence: {message: "O usuário precisa ter um username."}
    validates :password, presence: {message: "O usuário precisa ter uma senha."}
    validates :name, presence: {message: "O usuário precisa ter um nome."}

end

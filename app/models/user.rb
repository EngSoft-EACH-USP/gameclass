class User < ApplicationRecord

    validates :username, presence: {message: "O usuário precisa ter um nome."}
    validates :password, presence: {message: "O usuário precisa ter uma senha."}

end

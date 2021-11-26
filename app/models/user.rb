class User < ApplicationRecord

    enum kind: [ :learner, :coach, :admin ]
    
    has_secure_password

end

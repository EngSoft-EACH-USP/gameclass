class User < ApplicationRecord

    enum kind: [ :learner, :coach, :admin ]
    has_many :affiliate_requests, dependent: :delete_all
    has_one :coach, dependent: :destroy
    
    has_secure_password
end

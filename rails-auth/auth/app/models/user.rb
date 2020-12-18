class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
    # validate :custom_method

    has_secure_password

    # custom method to check password_confirmation and password BEFORE creating 
end

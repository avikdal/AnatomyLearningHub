class User < ApplicationRecord
    has_secure_password

    has_many :user_anatomy_modules
    has_many :anatomy_modules, through: :user_anatomy_modules
  

    has_many :reviews

    validates :username, presence: true, uniqueness: true

end

class AnatomyModule < ApplicationRecord
   
    has_many :user_anatomy_modules
    has_many :users, through: :user_anatomy_modules


    has_many :reviews

end

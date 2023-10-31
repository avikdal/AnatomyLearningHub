class Review < ApplicationRecord
  belongs_to :user
  belongs_to :anatomy_module
end

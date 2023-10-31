class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :review, :user

  belongs_to :user
  belongs_to :anatomy_module
end

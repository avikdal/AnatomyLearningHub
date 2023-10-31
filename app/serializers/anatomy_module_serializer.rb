class AnatomyModuleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_many :users
  has_many :reviews
end

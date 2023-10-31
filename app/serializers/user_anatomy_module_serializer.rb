class UserAnatomyModuleSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :anatomy_module
end

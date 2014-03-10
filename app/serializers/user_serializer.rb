class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :is_mod
end

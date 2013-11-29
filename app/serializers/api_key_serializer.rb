class ApiKeySerializer < ActiveModel::Serializer
  attributes :id, :access_token

  has_one :master_face, embed: id
end

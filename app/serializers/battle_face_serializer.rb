class BattleFaceSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name

  has_one :master_face
end

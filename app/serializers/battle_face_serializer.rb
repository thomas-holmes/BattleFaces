class BattleFaceSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :attack, :defense, :speed

  has_one :master_face
end

class BattleFaceSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :level, :attack, :defense, :speed

  has_one :master_face
end

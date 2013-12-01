class MasterFaceSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name, :email
  has_many :battle_faces
end

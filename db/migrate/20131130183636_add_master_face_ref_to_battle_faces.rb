class AddMasterFaceRefToBattleFaces < ActiveRecord::Migration
  def change
    add_reference :battle_faces, :master_face, index: true
  end
end

class AddLevelToBattleFace < ActiveRecord::Migration
  def change
    add_column :battle_faces, :level, :int
  end
end

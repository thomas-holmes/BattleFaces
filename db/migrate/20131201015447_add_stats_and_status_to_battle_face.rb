class AddStatsAndStatusToBattleFace < ActiveRecord::Migration
  def change
    add_column :battle_faces, :attack, :integer
    add_column :battle_faces, :defense, :integer
    add_column :battle_faces, :speed, :integer
    add_column :battle_faces, :status, :string
    add_index :battle_faces, :status
  end
end

class CreateBattleFaces < ActiveRecord::Migration
  def change
    create_table :battle_faces do |t|
      t.string :name

      t.timestamps
    end
  end
end

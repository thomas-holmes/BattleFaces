class CreateMasterFaces < ActiveRecord::Migration
  def change
    create_table :master_faces do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end

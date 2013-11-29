class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.references :master_face, index: true
      t.string :access_token
      t.string :scope
      t.datetime :expired_at
      t.datetime :created_at

      t.timestamps
    end
    add_index :api_keys, :access_token, unique: true
  end
end

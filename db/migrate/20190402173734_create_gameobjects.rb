class CreateGameobjects < ActiveRecord::Migration[5.2]
  def change
    create_table :gameobjects do |t|
      t.string :publisher
      t.string :developer
      t.string :platform
      t.string :mid

      t.timestamps
    end
  end
end

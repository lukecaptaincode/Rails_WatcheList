class CreateMediaobjects < ActiveRecord::Migration[5.2]
  def change
    create_table :mediaobjects do |t|
      t.string :title
      t.string :genre
      t.string :releasedate
      t.string :uid
      t.string :mid

      t.timestamps
    end
  end
end

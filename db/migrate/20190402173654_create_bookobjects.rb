class CreateBookobjects < ActiveRecord::Migration[5.2]
  def change
    create_table :bookobjects do |t|
      t.string :author
      t.string :publisher
      t.string :mid

      t.timestamps
    end
  end
end

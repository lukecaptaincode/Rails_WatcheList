class CreateMovieobjects < ActiveRecord::Migration[5.2]
  def change
    create_table :movieobjects do |t|
      t.string :studio
      t.string :director
      t.string :mid

      t.timestamps
    end
  end
end

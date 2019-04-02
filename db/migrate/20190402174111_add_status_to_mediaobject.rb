class AddStatusToMediaobject < ActiveRecord::Migration[5.2]
  def change
    add_column :mediaobjects, :status, :string
  end
end

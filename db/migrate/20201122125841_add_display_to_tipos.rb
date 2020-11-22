class AddDisplayToTipos < ActiveRecord::Migration[6.0]
  def change
    add_column :tipos, :display, :string
  end
end

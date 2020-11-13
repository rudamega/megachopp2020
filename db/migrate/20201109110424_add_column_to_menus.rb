class AddColumnToMenus < ActiveRecord::Migration[6.0]
  def change
    add_reference :menus, :tipo, null: false, foreign_key: true
  end
end

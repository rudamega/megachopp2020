class AddColumnToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :tipo, :string
  end
end

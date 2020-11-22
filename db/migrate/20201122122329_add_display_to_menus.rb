class AddDisplayToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :display, :string
  end
end

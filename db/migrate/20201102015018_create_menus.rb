class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.boolean :activado, default: false
      t.string :type
      t.boolean :sugerencia, default: false

      t.timestamps
    end
  end
end

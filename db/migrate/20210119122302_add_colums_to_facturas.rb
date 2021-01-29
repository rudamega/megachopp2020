class AddColumsToFacturas < ActiveRecord::Migration[6.0]
  def change
    add_column :facturas, :pagado, :boolean
    add_column :facturas, :original_en, :string
  end
end

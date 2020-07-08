class AddCreadoToCompros < ActiveRecord::Migration[6.0]
  def change
    add_column :compros, :creado_por, :string
    add_column :compros, :cargado_por, :string
    add_column :compros, :conciliado_por, :string
  end
end

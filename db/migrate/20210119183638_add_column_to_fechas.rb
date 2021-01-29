class AddColumnToFechas < ActiveRecord::Migration[6.0]
  def change
    add_column :fechas, :saldo_inicial, :integer, default: 0
    add_column :fechas, :saldo_final, :integer, default: 0
  end
end

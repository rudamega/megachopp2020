class AddColumnToFacturas < ActiveRecord::Migration[6.0]
  def change
    add_reference :facturas, :fecha, null: false, foreign_key: true
  end
end

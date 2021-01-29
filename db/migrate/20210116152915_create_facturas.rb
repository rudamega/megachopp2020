class CreateFacturas < ActiveRecord::Migration[6.0]
  def change
    create_table :facturas do |t|
      t.string :nro
      t.string :proveedor
      t.string :monto
      t.date :date
      t.string :tipo
      t.string :registrado_por
      t.string :cargado_por
      t.string :autorizado_por

      t.timestamps
    end
  end
end

class CreateTransaccions < ActiveRecord::Migration[6.0]
  def change
    create_table :transaccions do |t|
      t.date :date
      t.string :comprobante
      t.string :importe_credito
      t.string :importe_debito

      t.timestamps
    end
  end
end

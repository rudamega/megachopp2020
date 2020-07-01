class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :comprobante
      t.float :importe_credito
      t.float :importe_debito
      t.string :status, default: "no-conciliado"

      t.timestamps
    end
  end
end

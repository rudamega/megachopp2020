class AddMovimientoToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :movimiento, :string
    add_column :transactions, :fecha, :string
  end
end

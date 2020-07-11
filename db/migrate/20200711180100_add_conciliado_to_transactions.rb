class AddConciliadoToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :conciliado_por, :string
  end
end

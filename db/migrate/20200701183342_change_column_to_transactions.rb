class ChangeColumnToTransactions < ActiveRecord::Migration[6.0]
  def change
     change_column_default :transactions, :importe_debito, 0
     change_column_default :transactions, :importe_credito, 0
  end
end

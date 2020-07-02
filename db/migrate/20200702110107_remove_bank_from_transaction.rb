class RemoveBankFromTransaction < ActiveRecord::Migration[6.0]
  def change
    remove_column :transactions, :bank_id
  end
end

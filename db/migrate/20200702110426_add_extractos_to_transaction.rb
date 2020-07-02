class AddExtractosToTransaction < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :extracto, null: false, foreign_key: true
  end
end

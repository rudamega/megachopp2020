class AddColumnToPagos < ActiveRecord::Migration[6.0]
  def change
    add_column :pagos, :recibo, :string
  end
end

class AddNumberToCompros < ActiveRecord::Migration[6.0]
  def change
    add_column :compros, :nro, :string
    add_column :compros, :monto, :string
  end
end

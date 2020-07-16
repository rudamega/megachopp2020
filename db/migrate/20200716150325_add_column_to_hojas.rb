class AddColumnToHojas < ActiveRecord::Migration[6.0]
  def change
    add_column :hojas, :monto, :string
    add_column :hojas, :fecha_pago, :string
    add_column :hojas, :aprobado, :string, default: "no"
    add_column :hojas, :compensado, :string, default: "no"
    add_column :hojas, :aprobado_por, :string
    add_column :hojas, :description, :string
  end
end

class AddColumnToRetiros < ActiveRecord::Migration[6.0]
  def change
    add_column :retiros, :obs, :text
    add_column :retiros, :retirado_por, :string
    add_column :retiros, :enviado_a, :string
  end
end

class AddCompensadoToHojas < ActiveRecord::Migration[6.0]
  def change
    add_column :hojas, :compensado_por, :string
  end
end

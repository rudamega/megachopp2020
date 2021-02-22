class CreatePagos < ActiveRecord::Migration[6.0]
  def change
    create_table :pagos do |t|
      t.string :proveedor
      t.string :banco
      t.string :op

      t.timestamps
    end
  end
end

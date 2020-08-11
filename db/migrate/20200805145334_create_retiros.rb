class CreateRetiros < ActiveRecord::Migration[6.0]
  def change
    create_table :retiros do |t|
      t.string :monto
      t.string :forma
      t.string :status
      t.string :comprobante

      t.timestamps
    end
  end
end

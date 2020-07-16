class CreateCheques < ActiveRecord::Migration[6.0]
  def change
    create_table :cheques do |t|
      t.string :name
      t.string :nro_inicial
      t.string :nro_final
      t.references :bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end

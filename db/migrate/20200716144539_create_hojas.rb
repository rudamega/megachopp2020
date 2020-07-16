class CreateHojas < ActiveRecord::Migration[6.0]
  def change
    create_table :hojas do |t|
      t.integer :nro
      t.references :cheque, null: false, foreign_key: true

      t.timestamps
    end
  end
end

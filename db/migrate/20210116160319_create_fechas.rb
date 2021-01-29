class CreateFechas < ActiveRecord::Migration[6.0]
  def change
    create_table :fechas do |t|
      t.date :date
      t.references :pdc, null: false, foreign_key: true

      t.timestamps
    end
  end
end

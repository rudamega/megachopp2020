class CreateFijos < ActiveRecord::Migration[6.0]
  def change
    create_table :fijos do |t|
      t.string :name
      t.string :amount
      t.string :status, default: ""
      t.references :month, null: false, foreign_key: true

      t.timestamps
    end
  end
end

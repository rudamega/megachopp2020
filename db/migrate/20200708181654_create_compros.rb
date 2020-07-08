class CreateCompros < ActiveRecord::Migration[6.0]
  def change
    create_table :compros do |t|
      t.string :comment
      t.string :name
      t.string :status, default: "no-conciliado"

      t.timestamps
    end
  end
end

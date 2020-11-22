class CreateCovids < ActiveRecord::Migration[6.0]
  def change
    create_table :covids do |t|
      t.string :name
      t.integer :tel
      t.string :email
      t.integer :cinumber

      t.timestamps
    end
  end
end

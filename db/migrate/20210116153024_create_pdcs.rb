class CreatePdcs < ActiveRecord::Migration[6.0]
  def change
    create_table :pdcs do |t|
      t.string :name

      t.timestamps
    end
  end
end

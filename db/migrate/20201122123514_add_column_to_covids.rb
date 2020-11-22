class AddColumnToCovids < ActiveRecord::Migration[6.0]
  def change
    add_column :covids, :grados, :string
  end
end

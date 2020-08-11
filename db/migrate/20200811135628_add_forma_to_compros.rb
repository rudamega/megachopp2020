class AddFormaToCompros < ActiveRecord::Migration[6.0]
  def change
    add_column :compros, :forma, :string
  end
end

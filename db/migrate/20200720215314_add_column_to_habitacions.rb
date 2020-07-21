class AddColumnToHabitacions < ActiveRecord::Migration[6.0]
  def change
    add_column :habitacions, :name, :string
  end
end

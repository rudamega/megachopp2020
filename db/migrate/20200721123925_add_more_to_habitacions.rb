class AddMoreToHabitacions < ActiveRecord::Migration[6.0]
  def change
    add_column :habitacions, :porta_bidon, :string, default: "no"
    add_column :habitacions, :detergente, :string, default: "no"
    add_column :habitacions, :esponja, :string, default: "no"
    add_column :habitacions, :palo_de_piso, :string, default: "no"
    add_column :habitacions, :tasa, :string, default: "no"
    add_column :habitacions, :baso, :string, default: "no"
    add_column :habitacions, :azucar, :string, default: "no"
    add_column :habitacions, :lavandina, :string, default: "no"
  end
end

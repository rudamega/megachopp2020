class CreateHabitacions < ActiveRecord::Migration[6.0]
  def change
    create_table :habitacions do |t|
      t.string :bolsas, default: "no"
      t.string :jabon_en_polvo, default: "no"
      t.string :jabon_en_pan, default: "no"
      t.string :franela, default: "no"
      t.string :trapo, default: "no"
      t.string :latona, default: "no"
      t.string :escoba, default: "no"
      t.string :alcohol, default: "no"
      t.string :termo_transformador, default: "no"
      t.string :muda_sabana, default: "no"
      t.string :alzar_agua, default: "no"
      t.string :frazada, default: "no"
      t.string :papel_extra, default: "no"
      t.string :frigobar_limpio, default: "no"
      t.string :pasar_trapo_ventana, default: "no"
      t.string :pasar_trapo_cabecera, default: "no"
      t.string :toallas_cuerpo, default: "no"
      t.string :toalla_rostro, default: "no"
      t.string :toalla_piso, default: "no"
      t.string :muda_toalla, default: "no"
      t.string :cama_matrimonial, default: "no"

      t.timestamps
    end
  end
end

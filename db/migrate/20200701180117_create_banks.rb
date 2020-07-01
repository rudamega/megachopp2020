class CreateBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :account_number
      t.string :saldo_inicial

      t.timestamps
    end
  end
end

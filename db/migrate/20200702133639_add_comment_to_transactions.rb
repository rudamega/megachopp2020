class AddCommentToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :comment, :string
  end
end

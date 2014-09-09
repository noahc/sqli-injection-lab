class ChangeColumnTypeInTransactions < ActiveRecord::Migration
  def up
    change_column :transactions, :transfer_to, :interger
    change_column :transactions, :transfer_from, :interger
  end

  def down
    change_column :transactions, :transfer_from, :string
    change_column :transactions, :transfer_to, :string
  end
end

class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transfer_to
      t.string :transfer_from
      t.integer :amount_in_cents
      t.integer :account_id
    end
  end
end

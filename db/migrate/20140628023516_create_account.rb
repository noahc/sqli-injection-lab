class CreateAccount < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.integer :user_id
      t.string :account_name
    end
  end
end

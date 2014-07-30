class CreateSupportRequests < ActiveRecord::Migration
  def change
    create_table :support_requests do |t|
      t.integer :user_id
      t.text :content
      t.text :account_number

      t.timestamps
    end
  end
end

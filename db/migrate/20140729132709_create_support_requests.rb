class CreateSupportRequests < ActiveRecord::Migration
  def change
    create_table :support_requests do |t|
      t.integer :user_id
      t.text :content
      t.integer :account_id

      t.timestamps
    end
  end
end

class AddAccountDetailsToSupportRequests < ActiveRecord::Migration
  def change
    add_column :support_requests, :account_details, :text
  end
end

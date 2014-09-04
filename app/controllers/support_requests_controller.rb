class SupportRequestsController < ApplicationController
  def create
    support_request = SupportRequest.new
    support_request.account_id = params[:account]
    #The line below should allow SQLi by inserting, for example, "id='2'"
    user = User.find_by params[:user]
    user.accounts.each do |acc|
      support_request.content += "\n #{acc.account_number} -- #{acc.account_name} -- #{acc.account_value}"
    end
    support_request.save
    redirect_to root_path
  end

  def new
  end

  def show
    @request = SupportRequest.find(params[:id])
    @account = Account.find(@request.account_id)
  end
end

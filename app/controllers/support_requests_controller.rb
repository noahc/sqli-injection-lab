class SupportRequestsController < ApplicationController

  def index
    @requests = current_user.support_requests
  end

  def create
    support_request = SupportRequest.new
    support_request.account_id = params[:account]
    support_request.content = params[:content]
    #The line below should allow SQLi by inserting, for example, "id='2'"
    user = User.find_by params[:user]
    user.accounts.each do |acc|
      support_request.account_details = ""
      support_request.account_details += "\n #{acc.account_number} -- #{acc.account_name} -- #{acc.account_value}"
    end
    support_request.save
    redirect_to support_requests_path
  end

  def new
  end

  def show
    @request = SupportRequest.find(params[:id])
    @account = Account.find(@request.account_id)
  end
end

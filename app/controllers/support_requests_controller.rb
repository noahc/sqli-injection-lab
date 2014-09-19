class SupportRequestsController < ApplicationController

  def index
    @requests = current_user.support_requests.order('created_at DESC')
  end

  def create
    support_request = SupportRequest.new
    support_request.account_id = params[:account]
    support_request.content = params[:content]
    user = User.find_by params[:user]
    support_request.account_details = ""
    user.accounts.each do |acc|
      support_request.account_details += "#{acc.account_number} -- #{acc.account_name} -- #{view_context.number_to_currency acc.account_value} \n\n"
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

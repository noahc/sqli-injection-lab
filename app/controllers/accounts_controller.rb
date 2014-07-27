class AccountsController < ApplicationController
  def index
    @accounts = current_user.accounts
  end

  def show
    @account = Account.find(params[:id])
  end
end

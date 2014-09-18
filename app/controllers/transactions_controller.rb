class TransactionsController < ApplicationController
  def new
  end

  def index
    @transactions = current_user.transactions
  end

  def create
    if User.exists? ["id = '#{params[:to]}'"]
      transaction = Transaction.new
      transaction.amount_in_cents = params[:amount].to_i * 100
      transaction.transfer_from = current_user.id
      transaction.transfer_to = params[:to].to_i
      transaction.account = Account.find(params[:account])
      transaction.save
      flash[:notice] = "Transfer Succeeded!"
      redirect_to new_transaction_path
    else
      flash[:warning] = "No User With That Name Exists"
      redirect_to :back
    end
  end
end

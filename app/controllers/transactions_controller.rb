class TransactionsController < ApplicationController
  def new
  end

  def index
    binding.pry
    @transactions = current_user.transactions
  end

  def create
    #params[:to] = "') or (SELECT 1 FROM 'users' WHERE ssn = 12345343 AND name = 'joesfsf')--"
      binding.pry
    if User.exists? ["id = '#{params[:to]}'"]
      transaction = Transaction.new
      transaction.transfer_to = User.where(name: params[:to]).limit(1).pluck(:id).first
      transaction.amount_in_cents = params[:amount].to_i * 100
      transaction.transfer_from = current_user.id
      transaction.transfer_to = params[:to].to_i
      transaction.account = Account.find(params[:account])
      transaction.save
      redirect_to transaction.account
    else
      flash[:warning] = "No User With That Name Exists"
      redirect_to :back
    end
  end
end

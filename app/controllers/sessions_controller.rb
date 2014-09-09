class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
       flash[:success] = "Successful Login!"
      redirect_to root_url
    else
      flash[:warning] = "Invalid email or password"
      redirect_to root_url
      # render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end

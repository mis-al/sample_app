class SessionsController < ApplicationController
  include SessionsHelper
  
  def new
  
  end

  def create
    #render 'new'
    #render text: params[:session][:password]
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
      #remember user
      #redirect_to user
      #render text: "OK!"
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    #render text: "OK!"
    log_out
    redirect_to root_url
  end
  
end


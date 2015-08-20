class SessionsController < ApplicationController
  
  def new
  
  end

  def create
    #render 'new'
    #render text: params[:session][:password]
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
      #render text: "OK!"
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    
  end
  
end

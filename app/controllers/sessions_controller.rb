class SessionsController < ApplicationController

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to '/', notice: "You've signed in."
    else
      redirect_to signin_path, notice: 'There was a problem signing in. Please try again.'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', notice: "You've signed out."
  end

end

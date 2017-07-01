class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      UserMailer.say_hello_to(@user).deliver
      redirect_to '/', notice: "You've successfully signed up!"
    else
      redirect_to '/signup', notice: 'There was a problem signing up.'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end

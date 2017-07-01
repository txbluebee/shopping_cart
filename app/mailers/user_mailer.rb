class UserMailer < ApplicationMailer

  def say_hello_to(user)
    @user = user
    mail to:@user.email, subject: "Thank you very much!"
  end
end

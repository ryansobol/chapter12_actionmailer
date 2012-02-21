class UserMailer < ActionMailer::Base
  default :from => CONFIG["MAIL_FROM"]

  def registration_confirmation(user)
    @user = user
    mail(:to => user.email, :subject => "Registered")
  end
end

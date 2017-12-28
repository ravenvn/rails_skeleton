class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @login_url = new_user_session_url
    @url = root_url
    mail(to: @user.email, subject: t('mailer.welcome_subject'))
  end
end

class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notification.subject
  #
  def notification
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: 'Your bookings have changed')
  end
end

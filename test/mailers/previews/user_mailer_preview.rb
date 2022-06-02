# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/notification
  def notification
    user = User.find(params[:user_id])
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(user: user).notification
  end
end

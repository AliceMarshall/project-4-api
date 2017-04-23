# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    UserMailer.request_email(Request.find(7), Item.find(11), User.find(6), User.find(3))
  end
end

class UserMailer < ApplicationMailer
  default from: 'community.chest.lending2017@gmail.com'

  def request_email(request, item, user)
    @user = user
    @item = item.id
    @request = request
    @url  = 'http://localhost:7000/login' # url in email
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end

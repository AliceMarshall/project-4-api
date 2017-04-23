class UserMailer < ApplicationMailer
  default from: 'community.chest.lending2017@gmail.com'

  def request_email(request, item, user, borrower)
    @user = user
    @item = item
    @item_name = @item.name
    @request = request
    @borrower = borrower
    @url  = 'http://localhost:7000/profile/receivedrequests' # url in email
    mail(to: @user.email, subject: 'New Request on Community Chest')
  end

  def accept_email(request, item, user, owner)
    @user = user
    @item = item
    @item_name = @item.name
    @request = request
    @owner = owner
    @url  = 'http://localhost:7000/profile/sentrequests' # url in email
    mail(to: @user.email, subject: 'Request was Accepted on Community Chest')
  end

  def reject_email(request, item, user, owner)
    @user = user
    @item = item
    @item_name = @item.name
    @request = request
    @owner = owner
    # @url  = 'http://localhost:7000/profile/sentrequests' # url in email
    mail(to: @user.email, subject: 'Sorry! 😫 Request was Rejected on Community Chest')
  end
end

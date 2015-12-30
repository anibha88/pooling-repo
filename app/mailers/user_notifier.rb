class UserNotifier < ApplicationMailer
  default :from => 'bharadhwajnithin@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_approve_email(user)
    # binding.pry
    @user = user
    mail( :to => @user.email,
    :subject => 'Welcome and Congratulations your sign up has been approved!' )
  end

  def send_reject_email(user)
    # sbinding.pry
    @user = user
    mail( :to => @user.email,
    :subject => 'Get lost! Your sign up request has been rejected.' )
  end

end

class StatusController < ApplicationController
  def approve
    # binding.pry
    @user = User.find(params[:id])
    @user.update_attributes(approved: true)
    @user.save
    # binding.pry
    UserNotifier.send_approve_email(@user).deliver
    redirect_to admin_users_path, notice: 'User is approved.'
  end

  def reject
    # binding.pry
    @user = User.find(params[:id])
    @user.update_attributes(approved: false)
    @user.save
    UserNotifier.send_reject_email(@user).deliver
    redirect_to admin_users_path, notice: 'User is rejected.'
  end
end

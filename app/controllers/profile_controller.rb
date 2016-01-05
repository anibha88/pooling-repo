class ProfileController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
  end

  def show
    # binding.pry
    @user = current_user
  end
end

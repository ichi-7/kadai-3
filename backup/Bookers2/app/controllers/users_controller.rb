class UsersController < ApplicationController
  def index
    @user_images = User.all
  end
  
  def show
  end

  def edit
  end
end

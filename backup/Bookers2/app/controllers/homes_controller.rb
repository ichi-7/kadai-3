class HomesController < ApplicationController
  def top
    @user_id = current_user.id
  end
  
  def about
  end
end

class TopController < ApplicationController
before_action :forbid_login_user, {only: [:top]}
    
  def index
      @current_user = User.find_by(id: session[:user_id])
  end
  
  def top
  end
  
  def about
  end
  
  
end

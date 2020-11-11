class IntroductionController < ApplicationController
  
  def index
    @users = User.all
    @users = User.page(params[:page]).per(4)
end
  def show
    @user = User.find_by(id: params[:id])
  end
  
  
end

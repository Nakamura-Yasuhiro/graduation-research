class HomeController < ApplicationController
  def index
        session[:user_id] = nil
      end
  end
#このページに来たら自動的にログアウト
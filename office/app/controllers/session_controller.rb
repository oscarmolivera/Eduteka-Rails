# Session Controller Code
class SessionController < ApplicationController
  def index; end

  def login
    @user = User.authenticate(params[:name][0], params[:password][0])
    if @user
      session[:user] = @user.id
      redirect_to root_path
    else
      render 'index'
    end
  end
end

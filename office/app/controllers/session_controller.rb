# Session Controller Code
class SessionController < ApplicationController
  def index; end

  def login
    @user = User.authenticate(params[:name][0], params[:password][0])
    if @user
      flash[:notice] = "Welcome #{@user.name}"
      session[:user] = @user.id
      redirect_to root_path
    else
      flash[:notice] = 'Error! Please type a valid Username and Password'
      render 'index'
    end
  end

  def logout
    session[:user] = nil
    redirect_to root_path
  end
end

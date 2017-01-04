class SessionsController < ApplicationController

  def new
    #redirect_to login_path
  end

  def create
    #binding.pry
    if params[:name] == nil || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    #flash[:notice] = 'Logged out!'
    redirect_to login_path
  end
end

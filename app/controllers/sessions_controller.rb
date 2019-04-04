class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:name].clear
    redirect_to root_path
  end
end

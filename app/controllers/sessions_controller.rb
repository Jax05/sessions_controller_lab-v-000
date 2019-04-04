class SessionsController < ApplicationController
  def new
    raise session[:name].inspect
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
  end
end

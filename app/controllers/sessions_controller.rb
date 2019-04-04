class SessionsController < ApplicationController
  def new
    raise session.inspect
  end

  def create
    if session[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end
end

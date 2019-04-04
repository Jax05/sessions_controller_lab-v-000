class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:username].present?
      session[:username] = params[:username]
      redirect_to "/"
    else
      render :new
    end
  end

  def destroy
  end
end

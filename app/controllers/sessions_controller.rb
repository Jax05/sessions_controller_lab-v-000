class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name].present?
      session[:name] = params[:name]
      redirect_to "/"
    else
      render :new
    end
  end

  def destroy
  end
end

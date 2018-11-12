class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name]
      session[:name] = params[:name]

      redirect_to root_path
    else
      render :new, alert: "Please enter your name."
    end
  end

  def destroy
    session.delete [:name]
    redirect_to root_path
  end
end

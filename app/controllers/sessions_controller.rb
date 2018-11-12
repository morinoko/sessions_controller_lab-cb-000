class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      flash[:alert] = "Please enter your name."
      render :new
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end

class SessionsController < ApplicationController

  def new

  end

  def create
    session[:name] = params[:name]
    redirect_to '/login'
  end

  def destroy
    session.delete :name
  end

end

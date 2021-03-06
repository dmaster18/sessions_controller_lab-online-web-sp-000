class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    session[:name] = params[:name]
    if session[:name]
      render "application/hello"
    else
      redirect_to "/login"
    end
  end

end

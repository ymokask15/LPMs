class SessionsController < ApplicationController
  def new
  end

  def create
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    session.delete(:login_states) 
    # cookies = nil うまくいかない
    redirect_to home_top_path
  end
end

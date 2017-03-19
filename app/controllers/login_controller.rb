class LoginController < ApplicationController
  def new
  end

  def create
    interviewer = Interviewer.find_by(email_id: params[:username])
    if interviewer and interviewer.authenticate(params[:password])
      session[:user_id] = interviewer.id
      redirect_to interviewer_dashboard_url
    else
      redirect_to login_url, alert: "Invalid Email and Password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to homepage_url
  end
end

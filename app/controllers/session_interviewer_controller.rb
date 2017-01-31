class SessionInterviewerController < ApplicationController
  def new
  end

  def create
    interviewer = Interviewer.find_by(email_id: params[:user_id])
    if interviewer and interviewer.authenticate(params[:password])
      session[:user_id] = interviewer.id
      redirect_to interviewer_dashboard_url
    else
      redirect_to session_interviewer_url, alert: "Invalid Email and Password combination"
    end
  end

  def destroy
  end
end

class SessionsCandidateController < ApplicationController
  def new
  end

  def create #creating a new session for authenticates user
    candidate = Candidate.find_by(email_id: params[:user_id])
    if candidate and candidate.authenticate(params[:password])
      session[:user_id] = candidate.id
      redirect_to candidate_dashboard_url
    else
      redirect_to sessions_candidate_url, alert: "Invalid Email and Password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to homepage_url
  end
end

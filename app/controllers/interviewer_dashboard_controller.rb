class InterviewerDashboardController < ApplicationController
  before_action :authorize
  def home
    #find all the requests for this interviewer. they will be displayed on the homepage
    @requests = Request.where(interviewer: @interviewer.id)
    if @requests.blank?
      @no_request = 1
    end

  end

  def approved

  end


  protected
  def authorize
    @interviewer = Interviewer.find_by(id: session[:user_id]) #find candidate using email id
    if @interviewer.blank?
      redirect_to sessions_interviewer_url, notice: 'unable to authorize'
    end
  end
end

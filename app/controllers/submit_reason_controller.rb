class SubmitReasonController < ApplicationController
  before_action :authorize
  def save_reason
    request = Request.find_by(id: params[:id]) #find the request
    request.request_status = params[:status]
    request.reason = params[:reason]
    if request.save
      redirect_to interviewer_dashboard_url, notice: "Request rejected successfully"
    end
  end

  protected
  def authorize
    @interviewer = Interviewer.find_by(id: session[:user_id]) #find candidate using email id
    if @interviewer.blank?
      redirect_to sessions_interviewer_url, notice: 'unable to authorize'
    end
  end
end

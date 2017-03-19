class HomepageController < ApplicationController
  before_action :authorize #uncomment this once the site has to go live
  def home

  end

  protected
  def authorize
    interviewer = Interviewer.find_by(id: session[:user_id])
    if interviewer.blank?
    else
      session[:user_id] = interviewer.id
      redirect_to interviewer_dashboard_url
    end
  end
end

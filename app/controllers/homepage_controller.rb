class HomepageController < ApplicationController
  before_action :authorize #uncomment this once the site has to go live
  def home

  end

  protected
  def authorize
    if user_signed_in?
      redirect_to dashboard_url
    end 
  end
end

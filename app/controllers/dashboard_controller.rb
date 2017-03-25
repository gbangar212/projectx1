class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def home
  end

  def approve
  end

  def authorize
  end
end

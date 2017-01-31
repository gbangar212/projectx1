class CandidateDashboardController < ApplicationController
  before_action :authorize
  def home
  end

  def results
    #candidate = Candidate.find_by(id: session[:user_id])
    #get the name of the bachelors college of the candidate
    candidate_bachelor_college = @candidate.bachelor_college
    #get the name of the masters college of the candidate
    candidate_masters_college = @candidate.masters_college
    #get the name of the current employer of the candidate
    candidate_current_employer = @candidate.current_employer

    #making local variable out of form parameters
    college_name = params[:college_name]
    org_name = params[:org_name]
    org_pos = params[:org_pos]

    #the code below will find what parameters were submitted and then will process the query as needed
    if college_name.nil? and org_name.nil? and org_pos.nil? #nothing is provided in the form (use this chek in the javascript as well)
      redirect_to candidate_dashboard_url, notice: 'Please enter atleast one criteria'
    elsif college_name != nil #if college name is provided then process this block
      #find interviewers with same college background and display them
      #parametere to match: candidate, interviewer bachelorscollege, candidate interviewer old employer
      #and the college name mentioned in the research parameters
      #or we can have all the students diplayed and then sorted in this order, then sorted in the order or ratings
      @interviewers = Interviewer.where(masters_college: params[:college_name])
      if @interviewers.nil?
        #display message that no interviewrs were found matching the criteria and redirect to home
      end
    elsif org_name != nil and org_pos != nil
      #find interviewer with this search query

    elsif org_name != nil and org_pos = nil
      #find interviewers with this criteria

    else
      #find interviewers only with the org_pos

    end
  end

  def select_time_date
    

  end


  protected
  def authorize
    @candidate = Candidate.find_by(id: session[:user_id]) #find candidate using email id
    if @candidate.nil?
      redirect_to sessions_candidate_url, notice: 'unable to authorize'
    end
  end
end

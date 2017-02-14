class CandidateDashboardController < ApplicationController
  before_action :authorize #check if the candidate is logged in or not
  def home #display the home page of the candidate, has options to search
  end #end of home

  def results #show the results after search
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
    if college_name == "" and org_name =="" and org_pos == "" #nothing is provided in the form (use this chek in the javascript as well)
      redirect_to candidate_dashboard_url, notice: 'Please enter atleast one criteria'
    elsif college_name != "" #if college name is provided then process this block
      #find interviewers with same college background and display them
      #parametere to match: candidate, interviewer bachelorscollege, candidate interviewer old employer
      #and the college name mentioned in the research parameters
      #or we can have all the students diplayed and then sorted in this order, then sorted in the order or ratings
      @interviewers = Interviewer.where(masters_college: params[:college_name])
      if @interviewers.blank?
        #display message that no interviewrs were found matching the criteria and redirect to home
        redirect_to candidate_dashboard_url, notice: 'No experts with matching criteria'
      end
    elsif org_name != nil and org_pos != nil
      #find interviewer with this search query

    elsif org_name != nil and org_pos = nil
      #find interviewers with this criteria

    else
      #find interviewers only with the org_pos

    end
  end

  def requests #show the requests when the action is clicked
    @all_requests = Request.where(candidate: @candidate.id) #find all the requests for this candidate
    if @all_requests.blank?
      @no_request = 1
    else
    @accepted_requests = Array.new
    @rejected_requests = Array.new
    @edited_requests = Array.new
    @completed_requests = Array.new
    @pending_requests = Array.new
    @all_requests.each do |request|
      case request.request_status #sort thr request using status 1: approved, 2: rejected 3: edited 4: completed
      when "1" #requests has been approveded
        @accepted_requests << request
      when "2"
        @rejected_requests << request
      when "3"
      when "4"
        @completed_requests << request
      else
        @pending_requests << request
      end

      end #endof loop
    end #end of if else
  end #end of requests

  protected
  def authorize
    @candidate = Candidate.find_by(id: session[:user_id]) #find candidate using email id
    if @candidate.blank?
      redirect_to sessions_candidate_url, notice: 'Unable to authorize'
    end #end of if
  end #end of authorize
end #end of controller

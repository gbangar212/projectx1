class InterviewerDashboardController < ApplicationController
  before_action :authorize
  def home
    #find all the requests for this interviewer. they will be displayed on the homepage
    #need to sort the request by status id.
    #status id: 0/nil = created, 1= accepted, 2: rejected, 3:edited, 4:completed
    @requests = Request.where(interviewer: @interviewer.id)
    if @requests.blank? #if no request is found
      @no_request = 1 #raise flag, subsequesnt processing in the view
    else #need to sort on the basis of the status of the request and send to the view to display accordingly

    end

  end

  def approve
    status = params[:status] #get the status of the request
    request = Request.find_by(id: params[:id]) #find the request

    case status
    when "1" #if the request was approved
      request.request_status = status #set the status of the request
      request_id = "#{request.id}"
      selected_option =  params[request_id]#find which option was selected
      case selected_option
      when "1"
        request.approved_date = request.date_1
        request.approved_time = request.time_1
      when "2"
        request.approved_date = request.date_2
        request.approved_time = request.time_2
      when "3"
        request.approved_date = request.date_3
        request.approved_time = request.time_3
      when "4"
        request.approved_date = request.date_4
        request.approved_time = request.time_4
      when "5"
        request.approved_date = request.date_5
        request.approved_time = request.time_5
      end #end case on selected option
      if request.save
      redirect_to interviewer_dashboard_url, notice: "Request accepted. Selected option #{selected_option}"
      else redirect_to interviewer_dashboard_url, notice: "Error processing. Please try again"
      end

    when "2"

    end #end case on status

  end #end of definition



  protected
  def authorize
    @interviewer = Interviewer.find_by(id: session[:user_id]) #find candidate using email id
    if @interviewer.blank?
      redirect_to sessions_interviewer_url, notice: 'unable to authorize'
    end
  end
end

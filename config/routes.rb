Rails.application.routes.draw do

  devise_for :users
  get 'dashboard' => 'dashboard#home'
  get 'dashboard_approve' => 'dashboard#approve'
  get 'dashboard_authorize' => 'dashboard#authorize'

  get 'sessions_candidate' => 'sessions_candidate#new'
  post 'sessions_candidate' => 'sessions_candidate#create'
  delete 'sessions_candidate' => 'sessions_candidate#destroy'

  get 'session_interviewer' => 'session_interviewer#new'
  post 'session_interviewer' => 'session_interviewer#create'
  delete 'session_interviewer' => 'session_interviewer#destroy'

  get 'interviewer_dashboard' => 'interviewer_dashboard#home'
  post 'interviewer_dashboard' => 'interviewer_dashboard#approve'

  get 'candidate_dashboard' => 'candidate_dashboard#home'
  post 'candidate_dashboard' => 'candidate_dashboard#results'
  get 'candidate_dashboard_requests' => 'candidate_dashboard#requests'

  get 'admin_dashboard' => 'admin_dashboard#home'

  post 'submit_reason' => 'submit_reason#save_reason'

  get 'about' => 'about#aboutus'

  get 'login' => 'login#new'
  post 'login' => 'login#create'
  delete 'login' => 'login#destroy'

  resources :linkedin
  get '/linkedin_profile' => "linkedin#linkedin_profile"
  get '/oauth_account' => "linkedin#oauth_account"
  get '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'
  post '/oauth_account' => "linkedin#oauth_account"
  post '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'


  resources :admins
  resources :interviewers
  resources :candidates
  resources :searches
  resources :requests
  resources :schedules
  resources :employers
  resources :testimonials
  resources :currencies
  resources :skills
  resources :supports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homepage#home", as: 'homepage'
end

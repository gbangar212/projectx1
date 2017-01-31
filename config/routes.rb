Rails.application.routes.draw do
  get 'sessions_candidate' => 'sessions_candidate#new'
  post 'sessions_candidate' => 'sessions_candidate#create'
  delete 'sessions_candidate' => 'sessions_candidate#destroy'
  get 'session_interviewer' => 'session_interviewer#new'
  post 'session_interviewer' => 'session_interviewer#create'
  delete 'session_interviewer' => 'session_interviewer#destroy'
  get 'interviewer_dashboard' => 'interviewer_dashboard#home'
  get 'candidate_dashboard' => 'candidate_dashboard#home'
  get 'admin_dashboard' => 'admin_dashboard#home'
  post 'candidate_dashboard' => 'candidate_dashboard#results'
  get 'interviewer_select_time_date' => 'candidate_dashboard#select_time_date'
  get 'interviewer_dashboard_approve' => 'interviewer_dashboard#approve'


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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homepage#home", as: 'homepage'
end

Rails.application.routes.draw do
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

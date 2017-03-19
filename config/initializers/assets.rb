# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
%w( about admin_dashboard admins candidate_dashboard candidates currencies employers homepage interviewer_dashboard interviewers login requests schedules searches session_admin session_interviewer sessions_candidate skills submit_reason supports testimonials ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js.coffee", "#{controller}.css", "#{controller}.js"]
end

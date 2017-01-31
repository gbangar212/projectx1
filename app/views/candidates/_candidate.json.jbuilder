json.extract! candidate, :id, :email_id, :name, :tel_no, :skype_id, :linkedin_url, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
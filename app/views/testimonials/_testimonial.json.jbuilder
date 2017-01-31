json.extract! testimonial, :id, :text, :from_id, :to_id, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
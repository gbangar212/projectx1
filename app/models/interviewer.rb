class Interviewer < ApplicationRecord
  validates :email_id, presence: true, uniqueness: true
  validates :password, presence: true
  validates :name, presence: true
  validates :tel_no, presence: true, uniqueness: true
  validates :linkedin_url, presence: true
  validates :currency, presence: true
  validates :bio, presence: true
  validates :skill_1, presence: true
  has_secure_password
end

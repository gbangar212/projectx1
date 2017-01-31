class Candidate < ApplicationRecord
  validates :email_id, presence: true, uniqueness: true
  validates :password, presence: true
  validates :name, presence: true
  validates :tel_no, presence: true, uniqueness: true
  has_secure_password
end

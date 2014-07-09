class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :teams
  validates :username, :first_name,:email_address,:password, presence: true
  validates :username,:email_address, uniqueness: true
end

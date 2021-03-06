class User < ActiveRecord::Base
	# associations
	has_many :completed_courses
	has_many :courses, through: :completed_courses
	
	# validations
	has_secure_password
	valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :email, presence: true, format: { with: valid_email }, uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 5 }, on: :create

	# call backs
	before_create do
	  self.email.downcase
	end
end

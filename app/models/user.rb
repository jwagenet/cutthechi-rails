class User < ActiveRecord::Base
	has_many :bids, dependent: :destroy
	#has_many :candidates, through: :bids

	before_save { self.email = email.downcase }
	before_create :create_remember_token
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@(u\.|)pacific\.edu\z/i
	validates :email, presence: true, format: {	with: VALID_EMAIL_REGEX, message: "must use pacific.edu"}, uniqueness: {case_sensitive: false }
	VALID_PHONE_REGEX = /\(?[0-9]{3}\)?-? ?[0-9]{3}-? ?[0-9]{4}/
	validates :phone, presence: true, format: {	with: VALID_PHONE_REGEX, message: "must be 10 digit phone number"}
	has_secure_password
	validates :password, length: { minimum: 6, message: "must be at least 6 characters" } 


	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private 
		def create_remember_token
			self.remember_token = User.digest(User.new_remember_token)
		end
	
end

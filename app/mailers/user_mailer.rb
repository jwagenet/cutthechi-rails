class UserMailer < ActionMailer::Base
  default from: "j_wagenet@u.pacific.edu"

	def welcome_email(user)
		@user = user
		@url = 'http://localhost:3000'
		mail(to: @user.email, subject: 'Notification')
	end
end

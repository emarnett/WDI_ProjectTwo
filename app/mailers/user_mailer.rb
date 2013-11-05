class UserMailer < ActionMailer::Base
	default from: "ProjectTwo <emilyarnett@gmail.com>"

	def reset_email(user, request)
		@user = user
		@host = request.protocol + request.host_with_port

		mail to: @user.email, subject: "ProjectTwo: Reset your credentials"
	end

	def registration_email(registrant, request)
		@registrant = registrant
		@host = request.protocol + request.host_with_port

		mail to: @registrant.email, subject: "ProjectTwo: Complete your registration"
	end
end

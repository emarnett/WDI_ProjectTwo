Registrant.destroy_all
User.destroy_all

Registrant.create([
	{
		id: SecureRandom.urlsafe_base64,
		email: "bob@munat.com",
		expires_at: Time.now + 1.day
	},
	{
		id: SecureRandom.urlsafe_base64,
		email: "bill@munat.com",
		expires_at: Time.now + 1.day
	},
	{
		id: SecureRandom.urlsafe_base64,
		email: "biff@munat.com",
		expires_at: Time.now + 1.day
	},
])

User.create([
	{
		id: SecureRandom.urlsafe_base64,
		email: "chas@munat.com",
		name: "Chas",
		password: "123",
		password_confirmation: "123"
	},
	{
		id: SecureRandom.urlsafe_base64,
		email: "chad@munat.com",
		name: "Chad",
		password: "123",
		password_confirmation: "123"
	},
	{
		id: SecureRandom.urlsafe_base64,
		email: "cad@munat.com",
		name: "Cad",
		password: "123",
		password_confirmation: "123"
	}
])
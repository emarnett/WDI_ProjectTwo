class User
	include Mongoid::Document
	include Mongoid::Timestamps

	attr_accessor :password, :password_confirmation

	mount_uploader :image, ImageUploader

	has_many :recommendations

	field :id, type: String
	field :profile_name, type: String

	field :name, type: String
	field :city, type: String
	field :country, type: String
	field :email, type: String
	field :phone, type: String
	field :profession, type: String
	field :description, type: String

	field :salt, type: String
	field :fish, type: String

	field :code, type: String
	field :expires_at, type: Time

  field :image

	before_save :encrypt_password

	validates :email, presence: true
	validates :email, uniqueness: { case_sensitive: false }
	validates :profile_name, presence: true
	validates :profile_name, uniqueness: { case_sensitive: false }
	validates :name, presence: true
	validates :city, presence: true
	validates :password, presence: true, if: :new_record?
	validates :password_confirmation, presence: true, if: :new_record?
	validates :password, confirmation: true, if: :new_record?

	def authenticate(password)
    self.fish == BCrypt::Engine.hash_secret(password, self.salt)
	end

  private

	def encrypt_password
		unless password.blank? #if password.present?
			self.salt = BCrypt::Engine.generate_salt
			self.fish = BCrypt::Engine.hash_secret(password, self.salt)
		end
	end
end
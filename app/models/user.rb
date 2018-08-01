class User < ApplicationRecord
  has_secure_password
	before_validation :downcase_email

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true, :case_sensitive => false
	validates :password_digest, presence: true
	validates :password, :password_confirmation, length: { minimum: 4 }
	validates :avatar, allow_blank: true, format: {
		with: %r{\.gif|jpg|png}i,
		message: 'Must be a url for gif, jpg, or png image.'
	}

	def authenticate_with_credentials(email, password)
		if User.find_by(email: email.downcase.strip).try(:authenticate, password)
			@user = User.find_by_email(email.downcase.strip)
		else
			nil
		end
	end

	private

	def downcase_email
		self.email = email.downcase if email.present?
	end
end

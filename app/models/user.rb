class User < ApplicationRecord
#  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, 'valid_email_2/email': { mx: true, disposable: true, disallow_subaddressing: true },
                  uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

end

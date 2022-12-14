class User < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 250 }
  validates :last_name, presence: true, length: { maximum: 250 }
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 250 }, format: { with: EMAIL_FORMAT }
  validates :status, presence: true, inclusion: { in: %w[Active Inactive],
                                                  message: '%<value>s is not a valid status' }
end

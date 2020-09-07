class User < ApplicationRecord
  validates :user_name, presence: true, length: { in: 2..20 }, uniqueness: true
  validates :email, presence: true, length: { in: 8..30 }, uniqueness: true
  has_many :posts
  has_many :comments
end

class User < ApplicationRecord
  validates :name,  presence: true, length: { in: 2..20 }, uniqueness: true
  has_many :posts
  has_many :comments
end

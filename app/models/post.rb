class Post < ApplicationRecord
  validates :body, presence: true
  validates :title, presence: true, length: { in: 8..30 }
  belongs_to :user
  has_many :comments
end

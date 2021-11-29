class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 40000 }
end
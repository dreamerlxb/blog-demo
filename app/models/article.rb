class Article < ApplicationRecord
  validates :title, presence: true, length: 6..20
  validates :content, presence: true
  has_many :comments, dependent: :destroy
end

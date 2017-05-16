class Article < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  validates :title, presence: true, length: 6..20
  validates :content, presence: true
  # validates_pr
  has_many :comments, dependent: :destroy

  scope
end

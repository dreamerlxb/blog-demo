class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :content, presence: true, length: { minimum: 5, maximimum: 1000 }

  after_create_commit { CommentBroadcastJob.perform_later(self) }
  # after_validation :has_error
  # def has_error
  #   puts("是否有错")
  #   puts(self.errors.messages)
  # end
end

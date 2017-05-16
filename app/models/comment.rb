class Comment < ApplicationRecord
  belongs_to :article

  # after_initialize :set_defaults

  # def set_defaults
  #
  # end
end

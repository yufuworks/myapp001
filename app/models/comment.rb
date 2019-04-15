class Comment < ApplicationRecord
  validates :text, presence: true
  belongs_to :poet
  belongs_to :user
end

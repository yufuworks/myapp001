class Comment < ApplicationRecord
  belongs_to :poet
  belongs_to :user
end

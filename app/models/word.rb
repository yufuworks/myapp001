class Word < ApplicationRecord
  has_many :wordsfirsts
  has_many :wordsseconds
  has_many :wordsthirds
end

class List < ApplicationRecord
  # associations
  has_many :bookmarks, dependent: :destroy # creates a method => list.bookmarks
  has_many :movies, through: :bookmarks # creates a method => list.movies
  # validations
  validates :name, presence: true, uniqueness: true
end

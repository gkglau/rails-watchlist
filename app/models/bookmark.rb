class Bookmark < ApplicationRecord
  # associations
  belongs_to :movie # creates a method => bookmark.movie
  belongs_to :list # creates a method => bookmark.list
  # validations
  # validates :column_name, actual_validation
  validates :movie, uniqueness: { scope: :list }
  # validates :list, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }
end

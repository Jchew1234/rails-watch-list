class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, presence: true, uniqueness: { scope: :list }
  # this validates that if a movie is in the bookmark table, it can't have the same list.
  # another way of doing it - validates_uniqueness_of :movie, scope: :list
end

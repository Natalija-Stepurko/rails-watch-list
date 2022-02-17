class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6,
                                too_short: "%{count} characters is less than minimum allowed" }
end

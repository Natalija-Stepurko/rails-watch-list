class Movie < ApplicationRecord
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
  validates :overview, uniqueness: true
  has_many :bookmarks
  has_many :lists, through: :bookmarks
end

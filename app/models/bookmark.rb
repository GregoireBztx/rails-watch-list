class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie_id, uniqueness: { scope: :list_id }
  validates :movie_id , :list_id, presence: true
  validates :comment, length: { minimum: 6 }
end

class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  validates :title, presence: true, length: { minimum: 2}
  validates :year, numericality: true
  validates :plot, length: { in: 10..500 }

  def genre_names
    return self.genres.map { |genre| genre.name}
  end
end
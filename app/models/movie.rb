class Movie < ApplicationRecord
  has_many :actors
  validates :title, presence: true, length: { minimum: 2}
  validates :year, numericality: true
  validates :plot, length: { in: 10..500 }
end

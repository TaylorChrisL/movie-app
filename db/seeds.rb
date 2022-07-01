require "ffaker"

10.times do
  Movie.create(title: FFaker::Movie.title, year: FFaker::Vehicle.year.to_i, plot: FFaker::Lorem.paragraph)
end
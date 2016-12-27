class Movie < ActiveRecord::Base
  validates :name, :year, :length, :description, :genre, :cast, :rating
end

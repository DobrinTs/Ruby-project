class Movie < ActiveRecord::Base
  validates :name, presence: true
  has_many :participations
  has_many :people, through: :participations

  def calculate_rating
    return 0.0 if number_of_votes == 0

    rating / number_of_votes
  end
end

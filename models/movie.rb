class Movie < ActiveRecord::Base
  validates :name, presence: true
  has_many :participations
  has_many :people, :through => :participations
end

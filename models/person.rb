class Person < ActiveRecord::Base
  validates :name, presence: true
  has_many :participations
  has_many :movies, :through => :participations
end

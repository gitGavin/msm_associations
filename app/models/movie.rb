class Movie < ApplicationRecord
  validates :director_id, :title, presence: true
  validates_uniqueness_of :title, :scope => [:title, :year]
  validates :title, uniqueness: true
  validates :year, numericality: { greater_than_or_equal_to: 1870, less_than_or_equal_to: 2050 }
  validates :duration, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 2764800 }

  has_many :characters
  has_many :actors, :through => :characters
  belongs_to :director
end

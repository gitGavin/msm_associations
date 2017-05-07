class Director < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :name, :scope => [:name, :dob]

  has_many :movies
end

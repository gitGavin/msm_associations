class Actor < ApplicationRecord
  validates_uniqueness_of :name, :scope => [:name, :dob]
  validates :name, presence: true

  has_many :characters
  has_many :movies, :through => :characters
end

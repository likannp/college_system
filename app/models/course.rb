class Course < ApplicationRecord
  include GenerateRandomNumber
  validates :name, presence: true
  before_create :generate_random_number

  has_many :student_courses
  has_many :students, through: :student_courses

  has_many :couse_subjects
  has_many :college_subjects, through: :couse_subjects
end

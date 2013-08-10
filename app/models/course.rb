class Course < ActiveRecord::Base
  belongs_to :school
  has_many :graduates, foreign_key: :course_id, class_name: :completed_courses
end

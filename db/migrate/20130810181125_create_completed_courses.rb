class CreateCompletedCourses < ActiveRecord::Migration
  def change
    create_table :completed_courses do |t|
      t.references :user, index: true
      t.references :course, index: true
      t.datetime :completion_date

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :school, index: true
      t.string :name
      t.string :image_url
      t.string :teacher_names
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end

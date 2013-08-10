class CreateSubjectTags < ActiveRecord::Migration
  def change
    create_table :subject_tags do |t|
      t.references :course, index: true
      t.references :topic, index: true

      t.timestamps
    end
  end
end

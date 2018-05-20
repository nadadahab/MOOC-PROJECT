class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :content
      t.integer :course_id
      t.timestamps null: false
    end
  end
end

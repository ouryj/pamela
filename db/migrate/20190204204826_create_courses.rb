class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.text :name
      t.integer :totalInClassHours

      t.timestamps
    end
  end
end

class CreateStudentcohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :studentcohorts do |t|
      t.references :student
      t.references :cohort

      t.timestamps
    end
  end
end

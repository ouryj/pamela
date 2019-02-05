class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.text :name
      t.datetime :startDate
      t.datetime :endDate
      t.string :instructor
      t.string :students

      t.timestamps
    end
  end
end

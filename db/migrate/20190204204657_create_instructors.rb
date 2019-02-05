class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.text :salary
      t.text :educationPeak

      t.timestamps
    end
  end
end

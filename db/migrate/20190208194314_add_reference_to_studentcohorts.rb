class AddReferenceToStudentcohorts < ActiveRecord::Migration[5.2]
  def change
    add_reference :studentcohorts, :cohort, index: true 
  end
end

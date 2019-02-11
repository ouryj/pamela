class AddForeignKeyInStructor < ActiveRecord::Migration[5.2]
  def change
    add_reference :instructors, :cohort, index: true
  end
end

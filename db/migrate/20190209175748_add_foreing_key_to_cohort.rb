class AddForeingKeyToCohort < ActiveRecord::Migration[5.2]
  def change
    add_reference :cohorts, :course, index: true
  end
end

class AddStudentToPerformance < ActiveRecord::Migration[5.1]
  def change
    add_reference :performances, :student, foreign_key: true
  end
end

class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :picture
      t.string :full_name
      t.date :day

      t.timestamps
    end
  end
end

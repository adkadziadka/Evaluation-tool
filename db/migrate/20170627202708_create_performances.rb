class CreatePerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :performances do |t|
      t.string :color
      t.text :remarks

      t.timestamps
    end
  end
end

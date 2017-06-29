class AddBatchToPerformance < ActiveRecord::Migration[5.1]
  def change
    add_reference :performances, :batch, foreign_key: true
  end
end

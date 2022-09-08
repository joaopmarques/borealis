class AddLengthCompletedStatusToGoals < ActiveRecord::Migration[7.0]
  def change
    add_column :goals, :length, :integer, default: 1
  end
end

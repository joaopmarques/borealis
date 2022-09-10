class CreateCycles < ActiveRecord::Migration[7.0]
  def change
    create_table :cycles do |t|
      t.integer :cycle_length
      t.string :time_unit

      t.timestamps
    end
  end
end

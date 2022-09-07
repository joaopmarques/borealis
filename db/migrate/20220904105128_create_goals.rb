class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.boolean :completed
      t.datetime :completion_date

      t.timestamps
    end
  end
end

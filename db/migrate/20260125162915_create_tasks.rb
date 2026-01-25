class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :target_time
      t.string :timer_type

      t.timestamps
    end
  end
end
